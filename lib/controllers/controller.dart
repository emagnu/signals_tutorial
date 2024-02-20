//   ///
//  Import LIBRARIES
import 'package:signals_flutter/signals_flutter.dart';

//  Import FILES
//  SIGNALS
final Signal<int> counter = signal<int>(0);
//  //  //   ///

class CounterController {
  void increment() {
    counter.value++;
  }

  void decrement() {
    counter.value--;
  }

  void reset() {
    counter.value = 0;
  }
}
