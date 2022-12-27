import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_provider_sample/provider/list_provider.dart';

class NameAddButton extends ConsumerWidget {
  const NameAddButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () => ref.read(namesProvider.notifier).addName(),
      child: const Icon(Icons.add),
    );
  }
}
