//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:signals_tutorial/pages/tmp_page.dart';
//  Import FILES
import 'controller_page.dart';
import 'counter_page.dart';
import 'signals_page.dart';
//  SIGNALS
//  //  //   ///

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignalsPage()),
                );
              },
              child: const Text('Hello World'),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CounterPage()),
                );
              },
              child: const Text('Counter'),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ControllerPage()),
                );
              },
              child: const Text('Controller'),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TmpPage()),
                );
              },
              child: const Text('Tmp'),
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
