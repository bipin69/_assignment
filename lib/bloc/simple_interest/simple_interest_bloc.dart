import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleInterestBloc extends Cubit<double> {
  SimpleInterestBloc() : super(0.0);

  void calculateInterest(double principal, double rate, double time) {
    final interest = (principal * rate * time) / 100;
    emit(interest);
  }
}
