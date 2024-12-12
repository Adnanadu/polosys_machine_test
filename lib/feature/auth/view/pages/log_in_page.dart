import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:polosys_machine_test/feature/auth/view/widgets/custom_button_widget.dart';
import 'package:polosys_machine_test/feature/auth/view/widgets/text_field_widget.dart';

class LogInPage extends HookWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final isPasswordVisible = useState(false);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top Gradient and Header
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
              height: 300,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          // Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.arrow_back_ios_outlined,
                            size: 14, color: Colors.white),
                      ),
                      Row(
                        children: [
                          const Text(
                            "Don't have an account?",
                            style: TextStyle(color: Colors.white),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(218, 33, 107, 243),
                                borderRadius:
                                    BorderRadius.all(Radius.elliptical(12, 12)),
                              ),
                              child: const Text(
                                'Get Started',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Text(
                    'Jobsly',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
            // Login Card
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Welcome Back',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text('Enter your details below'),
                  const SizedBox(height: 16),
                  // Email Field
                  TextFieldWidget(
                    controller: emailController,
                    hintText: 'Email Address',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 16),
                  // Password Field
                  TextFieldWidget(
                    controller: passwordController,
                    hintText: 'Password',
                    obscureText: !isPasswordVisible.value,
                    suffixIcon: IconButton(
                      icon: Icon(isPasswordVisible.value
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () =>
                          isPasswordVisible.value = !isPasswordVisible.value,
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Sign In Button
                  // CustomButton(
                  //   text: 'Sign in',
                  //   onPressed: () {
                  //     //  Add sign-in logic
                  //   },
                  // ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF6A11CB),
                          Color.fromARGB(255, 118, 18, 211),
                          Color.fromARGB(255, 216, 26, 204),
                          Color.fromARGB(45, 252, 37, 198),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: const Text(
                      'Sign in',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Forgot Password
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot your password?',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),

                  /// or sign in with
                  const Row(
                    children: [
                      Expanded(child: Divider()),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Center(child: Text('Or sign in with')),
                      ),
                      Expanded(child: Divider())
                    ],
                  ),
                  // Social Sign-in

                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.g_translate, size: 20),
                        label: const Text('Google'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          // foregroundColor: Colors.white,
                          side: const BorderSide(color: Color(0xFF6A11CB)),
                          // : BorderSide.none,
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 24),
                        ),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.facebook_outlined, size: 20),
                        label: const Text('Facebook'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          // foregroundColor: Colors.white,
                          side: const BorderSide(color: Color(0xFF6A11CB)),
                          // : BorderSide.none,
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 24),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
