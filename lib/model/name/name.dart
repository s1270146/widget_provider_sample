import 'package:freezed_annotation/freezed_annotation.dart';

part 'name.freezed.dart';
part 'name.g.dart';

@freezed
class Name with _$Name {
  const factory Name(
      {required String id,
      required String first,
      required String family}) = _Name;
  factory Name.fromJson(Map<String, Object?> json) => _$NameFromJson(json);
  factory Name.toModel(String id, Map<String, Object?> json) => Name(
        id: id,
        first: json['first'].toString(),
        family: json['family'].toString(),
      );
}
