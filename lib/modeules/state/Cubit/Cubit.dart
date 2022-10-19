
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sdaw222/modeules/state/Cubit/States.dart';

class CounterCubit extends Cubit<CounterState> {


  CounterCubit() : super(CounterinitialState());
  int counter=1;
  static CounterCubit get(context)=>BlocProvider.of(context);

  void min(){
    counter--;
    emit(CounterminsState(counter));
  }
  void pls(){
    counter++;
    emit(CounterpulsState(counter));

  }
}