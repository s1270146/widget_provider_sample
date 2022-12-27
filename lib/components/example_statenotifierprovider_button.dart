import 'package:flutter/material.dart';
import 'package:widget_provider_sample/view/example_statenotifierprovider_page.dart';

class ExampleStateNotifierProviderButton extends StatelessWidget {
  const ExampleStateNotifierProviderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ExampleStateNotifierProviderPage(),
          ),
        ),
        child: const Text('StateNotifierProvider'),
      ),
    );
  }
}
