import 'package:json_annotation/json_annotation.dart';
part 'home_page.g.dart';

@JsonSerializable()
class HomeMainScreen {
  @JsonKey(name: 'results')
  List<HomeScreenData> results;

  HomeMainScreen({
    this.results = const [],
  });

  factory HomeMainScreen.fromJson(Map<String, dynamic> json) {
    return _$HomeMainScreenFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeMainScreenToJson(this);
}

@JsonSerializable()
class HomeScreenData {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'poster_path')
  String? postarPath;

  HomeScreenData({this.id, this.postarPath});

  factory HomeScreenData.fromJson(Map<String, dynamic> json) {
    return _$HomeScreenDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeScreenDataToJson(this);
}
