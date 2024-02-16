part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class PrintEvent extends CounterEvent {
  final String data;
  PrintEvent({required this.data});
}