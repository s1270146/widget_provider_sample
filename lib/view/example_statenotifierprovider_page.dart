import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_provider_sample/components/header.dart';
import 'package:widget_provider_sample/components/name_add_button.dart';
import 'package:widget_provider_sample/provider/list_provider.dart';

class ExampleStateNotifierProviderPage extends ConsumerWidget {
  const ExampleStateNotifierProviderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final names = ref.watch(namesProvider);
    return Scaffold(
      appBar: Header(),
      body: ListView(
        children: [
          for (final name in names)
            ListTile(
              title: Text('${name.family} ${name.first}'),
            )
        ],
      ),
      floatingActionButton: const NameAddButton(),
    );
  }
}
