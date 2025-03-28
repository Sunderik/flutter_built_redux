import 'package:built_redux/built_redux.dart';
import 'package:built_value/built_value.dart';

part 'counter.g.dart';

ReducerBuilder<Counter, CounterBuilder> reducerBuilder = new ReducerBuilder<Counter, CounterBuilder>()
  ..add<dynamic>(CounterActionsNames.increment, (s, a, b) => b.count++);

abstract class CounterActions extends ReduxActions {
  factory CounterActions() => _$CounterActions();
  CounterActions._();

  ActionDispatcher<void> get increment;
}

abstract class Counter implements Built<Counter, CounterBuilder> {
  factory Counter() => _$Counter._(count: 0);
  Counter._();

  int get count;
}
