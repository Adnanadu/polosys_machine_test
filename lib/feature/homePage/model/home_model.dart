import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_model.freezed.dart';
part 'home_model.g.dart';

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

  ///from json
  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
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

  ///from json
  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}
