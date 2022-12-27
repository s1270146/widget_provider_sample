import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_provider_sample/provider/add_provider.dart';

class CountText extends ConsumerWidget {
  const CountText({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(addProvider);
    return Text(
      '$counter',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
