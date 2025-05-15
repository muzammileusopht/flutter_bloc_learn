import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_learn/show_loader_eg/laoder_cubit.dart';

class LoaderPage extends StatefulWidget {
  const LoaderPage({super.key});

  @override
  State<LoaderPage> createState() => _LoaderPageState();
}

class _LoaderPageState extends State<LoaderPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Showing Loader With Bloc'), centerTitle: true,),
      body: BlocBuilder <LaoderCubit, String>(
        builder: (context, ohhloader) => Column(
          children: [
            ohhloader == 'started'? CircularProgressIndicator() : Text('Loader is Stopped'),
           
            Row(
            children: [
              ElevatedButton(onPressed: (){context.read<LaoderCubit>().startLoader();}, child: Text('start Loader')),
              ElevatedButton(onPressed: (){}, child: Text('stop Loader')),
            ],
          )
          ],
        )
        )
     
    );
  }
}