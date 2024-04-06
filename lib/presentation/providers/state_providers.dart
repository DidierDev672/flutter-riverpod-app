import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'state_providers.g.dart';

@Riverpod(keepAlive: true)
class Counter extends _$Counter {
  @override
  int build() => 5;

  void increaseByOne() {
    state++;
  }
}

//! DarkMode -> boolean default: false
//! toggleDarkMode()

@Riverpod(keepAlive: true)
class DarkMode extends _$DarkMode {
  @override
  bool build() => false;

  void toggleDarkMode() {
    state = !state;
  }
}

//! UserName => String.
//! Default: 'Melisa Flores'
//! changeName (String name)
//! UserNameProvider.notifier).changeName( RandomGenerator.gerRandomName())

@Riverpod(keepAlive: true)
class UserName extends _$UserName {
  @override
  String build() => 'Melissa Flores';

  void changeName(String name) {
    state = name;
  }
}
