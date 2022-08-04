import 'dart:io';

void main() async {
  // - prefer_single_quotes
  const String partOne = "Hello";
  const String partTwo = 'World';

  // - avoid_print
  print('$partOne $partTwo');

  // - unnecessary_lambdas
  void Function() tOff;
  tOff = () {
    tearOff();
  };

  // - avoid slow async io methods
  File('filename').exists();

  // - list_remove_unrelated_type
  var list = <int>[];
  if (list.remove('1')) print('someFunction');

  // - literal_only_boolean_expressions
  if (true) {}

  // - no_duplicate_case_values
  switch (partOne) {
    case 'a':
      break;
    case 'b':
      break;
    case 'a':
      break;
  }

  try {
    print('hello world! ${1 / 0}');
  } catch (e) {
  } finally {
    // throw 'Find the hidden error :P'; // LINT
  }

  await 43;
}

void tearOff() {}

abstract class Base {
  final double value;

  Base({required this.value});

  int methodA(int foo);

  String methodB(String foo);
}

class Sub extends Base {
  Sub({required double value}) : super(value: value);

  // - always_declare_return_types
  @override
  methodA(int bar) => bar;

  @override
  String methodB(String bar) => bar;

  @override
  int get hashCode => super.hashCode;
}
