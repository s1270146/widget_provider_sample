import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_provider_sample/provider/add_provider.dart';

class CountAddButton extends ConsumerWidget {
  const CountAddButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () => ref.read(addProvider.notifier).update((state) {
        state = state + 1;
        return state;
      }),
      child: const Icon(Icons.add),
    );
  }
}
