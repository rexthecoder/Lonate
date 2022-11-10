import 'dart:async';

///Creates a debounced function that delays invoking func until after wait milliseconds have
///elapsed since the last time the debounced function was invoked.
/// The debounced function comes with a cancel method to cancel
///delayed func invocations and a flush method to immediately invoke them
Map timeouts = {};

void debounce(int ms, Function target, List arguments) {
  if (timeouts.containsKey(target)) {
    timeouts[target].cancel();
  }

  Timer timer = Timer(Duration(milliseconds: ms), () {
    Function.apply(target, arguments);
  });

  timeouts[target] = timer;
}

/// Invokes func after wait milliseconds. Any additional arguments
///  are provided to func when it's invoked.
void delay(int ms, Function target, List arguments) {
  Future.delayed(Duration(milliseconds: ms), () {
    Function.apply(target, arguments);
  });
}



/// Function to compute multiple functions in parallel using the same args
/// returns the result as one function
dynamic multipleComputation(
  Function func, [
  List<Function>? computors,
  List? args,
]) {
  if (computors == null) {
    return Function.apply(func, args);
  }
  var results = computors.map((computors) {
    return Function.apply(computors, args);
  });
  return Function.apply(func, results.toList());
}

/// The function is called at most once in a specified time period
/// the function is called with the latest arguments
Function throttle(int ms, Function target, List arguments) {
  var last = 0;
  return () {
    var now = DateTime.now().millisecondsSinceEpoch;
    if (now - last > ms) {
      last = now;
      Function.apply(target, arguments);
    }
  };
}
