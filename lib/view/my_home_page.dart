import 'package:flutter/material.dart';
import 'package:widget_provider_sample/components/count_add_button.dart';
import 'package:widget_provider_sample/components/count_text.dart';
import 'package:widget_provider_sample/components/example_statenotifierprovider_button.dart';
import 'package:widget_provider_sample/components/header.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            CountText(),
            ExampleStateNotifierProviderButton(),
          ],
        ),
      ),
      floatingActionButton: const CountAddButton(),
    );
  }
}
