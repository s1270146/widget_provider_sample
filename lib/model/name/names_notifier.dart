import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_provider_sample/model/name/name.dart';

class NamesNotifier extends StateNotifier<List<Name>> {
  NamesNotifier() : super([]);
  void addName() {
    int count = state.length + 1;
    Map<String, Object> json = {
      'id': '$count',
      'first': '名前$count',
      'family': '名字',
    };
    final name = Name.fromJson(json);
    state = [...state, name];
  }
}
