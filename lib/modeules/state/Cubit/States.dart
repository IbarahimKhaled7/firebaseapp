
abstract class CounterState{}

class CounterinitialState extends CounterState{}

class CounterpulsState extends CounterState{
  final int counter ;

  CounterpulsState(this.counter);
}

class CounterminsState extends CounterState{
  final int counter;

  CounterminsState(this.counter);

}