import 'package:flutter/material.dart';
import 'package:flutter_bloc_learn/counter_basic_eg/counter_cubit.dart';
import 'package:flutter_bloc_learn/counter_basic_eg/counter_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() => runApp(CounterApp());

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => CounterCubit(),
        child: CounterPage(),
      ),
    );
  }
}