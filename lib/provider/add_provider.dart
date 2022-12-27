import 'package:flutter_riverpod/flutter_riverpod.dart';

final addProvider = StateProvider<int>((ref) {
  int i = 0;
  return i;
});
