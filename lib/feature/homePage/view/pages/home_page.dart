import 'package:flutter/material.dart';
import 'package:polosys_machine_test/feature/homePage/model/home_model.dart';
import 'package:polosys_machine_test/feature/homePage/services/api_services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: FutureBuilder<List<HomeModel>>(
        future: ApiServices().fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: SelectableText('Error: ${snapshot.error}'),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text('No data available'),
            );
          } else {
            final data = snapshot.data!;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final product = data[index];
                return ListTile(
                  title: Text(product.title ?? 'No title'),
                  subtitle: Text(
                      '\$${(product.price as num?)?.toStringAsFixed(2) ?? 'N/A'}'),
                  trailing: product.image != null
                      ? Image.network(product.image!)
                      : const SizedBox.shrink(),
                );
              },
            );
          }
        },
      ),
    );
  }
}
