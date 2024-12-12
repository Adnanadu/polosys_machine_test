import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_model.freezed.dart';

@freezed
class HomeModel with _$HomeModel {
  const factory HomeModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "price") double? price,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "category") Category? category,
    @JsonKey(name: "image") String? image,
    @JsonKey(name: "rating") Rating? rating,
  }) = _HomeModel;
}

enum Category {
  @JsonValue("electronics")
  electronics,
  @JsonValue("jewelery")
  jewelery,
  @JsonValue("men's clothing")
  men_s_clothing,
  @JsonValue("women's clothing")
  women_s_clothing
}

@freezed
class Rating with _$Rating {
  const factory Rating({
    @JsonKey(name: "rate") double? rate,
    @JsonKey(name: "count") int? count,
  }) = _Rating;
}
