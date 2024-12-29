import 'package:_assignment/bloc/area_circle/area_circle_bloc.dart';
import 'package:_assignment/bloc/simple_interest/simple_interest_bloc.dart';
import 'package:_assignment/bloc/student/student_bloc.dart';
import 'package:_assignment/view/area_circle_view.dart';
import 'package:_assignment/view/simple_interest_view.dart';
import 'package:_assignment/view/student_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardBloc extends Cubit<void> {
  DashboardBloc(
    this._areaCircleBloc,
    this._simpleInterestBloc,
    this._studentBloc,
  ) : super(null);

  // Instances
  final AreaCircleBloc _areaCircleBloc;
  final SimpleInterestBloc _simpleInterestBloc;
  final StudentBloc _studentBloc;

  // Area Circle View
  void openAreaCircleView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _areaCircleBloc,
          child: AreaCircleView(),
        ),
      ),
    );
  }

  // Simple Interest View
  void openSimpleInterestView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _simpleInterestBloc,
          child: SimpleInterestView(),
        ),
      ),
    );
  }

  // Student View
  void openStudentView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _studentBloc,
          child: StudentView(),
        ),
      ),
    );
  }
}
