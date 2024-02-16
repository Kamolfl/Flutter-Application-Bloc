import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<PrintEvent>((event, emit) async {
      emit(LoadingState());
      await Future.delayed(const Duration(seconds: 5));
      try {
        final int izmenyonnayaData = int.parse(event.data);
        emit(CounterSuccessState(returnData: izmenyonnayaData));
      } catch (e) {
        emit(ErrorState(errorText: e.toString()));
      }
    });
  }
}
