import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_provider_sample/model/name/name.dart';
import 'package:widget_provider_sample/model/name/names_notifier.dart';

final namesProvider = StateNotifierProvider<NamesNotifier, List<Name>>(
  (ref) => NamesNotifier(),
);
