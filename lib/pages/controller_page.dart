//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:signals_flutter/signals_flutter.dart';
import 'package:signals_tutorial/controllers/controller.dart';
//  Import FILES
//  SIGNALS
//  //  //   ///

final CounterController counterController = CounterController();

//  //  //   ///
class ControllerPage extends StatelessWidget {
  const ControllerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Controller Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              counter.watch(context).toString(),
              style:
                  const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                counterController.increment();
              },
              child: const Text('Increment'),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                counterController.decrement();
              },
              child: const Text('Decrement'),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                counterController.reset();
              },
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
