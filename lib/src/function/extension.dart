import 'package:lonate/lonate.dart';

extension RichFunction on Function {
  ///Creates a debounced function that delays invoking func until after wait milliseconds have
  ///elapsed since the last time the debounced function was invoked.
  /// The debounced function comes with a cancel method to cancel delayed func invocations and a flush method to immediately invoke them.
  ///
  void isDebounce(int ms, List args) => debounce(ms, this, args);

  /// Invokes func after wait milliseconds. Any additional arguments
  void isDelay(int ms, List args) => delay(ms, this, args);


  /// Function to compute multiple functions in parallel using the same args
  dynamic isMultipleComputation([List<Function>? computors, List? args]) =>
      multipleComputation(this, computors, args);

  /// The function is called at most once in a specified time period.
  dynamic isThrottle(int ms, List args) => throttle(ms, this, args);
}
