//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:signals_flutter/signals_flutter.dart';

//  Import FILES
//  SIGNALS
final Signal<String> helloWorldState = signal<String>('Hello World');
//  //  //   ///

class SignalsPage extends StatelessWidget {
  const SignalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Signals Page'),
      ),
      body: Center(
          // child: Text(helloWorldState.value),
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(helloWorldState.watch(context)),
          const SizedBox(height: 20.0),
          Watch((context) => Text(helloWorldState.value))
        ],
      )),
    );
  }
}
