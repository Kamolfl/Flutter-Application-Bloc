part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterSuccessState extends CounterState {
  final int returnData;
  CounterSuccessState({required this.returnData});
}

class LoadingState extends CounterState {}

class ErrorState extends CounterState {
  final String errorText;
  ErrorState({required this.errorText});
}