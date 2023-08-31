part of 'counter_a_bloc.dart';

sealed class CounterAEvent extends Equatable {
  const CounterAEvent();

  @override
  List<Object> get props => [];
}

class CounterEventAdd extends CounterAEvent {}

class CounterEventReset extends CounterAEvent {}
