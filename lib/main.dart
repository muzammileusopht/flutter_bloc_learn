import 'package:flutter/material.dart';
import 'package:flutter_bloc_learn/counter_basic_eg/counter_cubit.dart';
import 'package:flutter_bloc_learn/counter_basic_eg/counter_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_learn/show_loader_eg/laoder_cubit.dart';
import 'package:flutter_bloc_learn/show_loader_eg/loader_page.dart';


void main() => runApp(CounterApp());

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider<CounterCubit>(
            create: (_) => CounterCubit(),
          ),
          BlocProvider<LaoderCubit>(
            create: (_) => LaoderCubit(),
          ),
        ],
        child: LoaderPage(), // or CounterPage(), based on your UI
      ),
    );
  }
}


// void main() => runApp(CounterApp());

// class CounterApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: BlocProvider(create: create)
//       BlocProvider(
//         create: (_) => CounterCubit(),
//         create: (_) => LaoderCubit(),
//         // child: CounterPage(),
//         child: LoaderPage(),
//       ),
//     );
//   }
// }