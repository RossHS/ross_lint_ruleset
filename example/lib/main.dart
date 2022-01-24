void main() {
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
}

void tearOff() {}

abstract class Base {
  int methodA(int foo);

  String methodB(String foo);
}

class Sub extends Base {
  // - always_declare_return_types
  @override
  methodA(int bar) => bar;

  @override
  String methodB(String bar) => bar;
}
