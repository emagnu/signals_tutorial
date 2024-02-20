//   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:signals_flutter/signals_flutter.dart';

//  Import FILES
//  SIGNALS
final Signal<int> counter = signal<int>(0);
final cumputedCounter = computed(() => counter.value.isEven ? 'even' : 'odd');

//   ///)
//  //  //   ///

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    counter.listen(context, () {
      debugPrint('counter.value: ${counter.value}');
      final snackBar = SnackBar(
          duration: const Duration(seconds: 1),
          content: counter.value == 5
              ? Text('counter.value: ${counter.value}')
              : const Text(''));
      ScaffoldMessenger.of(context)
        ..clearSnackBars()
        ..showSnackBar(snackBar);
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 10.0),
            Text(
              // counter.value.toString(),
              counter.watch(context).toString(),
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'This value is ${cumputedCounter.watch(context)}',
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('counter.value: ${counter.value}');
          counter.value++;
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
