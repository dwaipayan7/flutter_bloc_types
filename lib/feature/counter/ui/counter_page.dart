import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<CounterBloc>().add(CounterIncrementEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Counter Page",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold
          ),),
        centerTitle: true,
        elevation: 5,
        backgroundColor: Colors.blueAccent,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterBloc>().add(CounterIncrementEvent());
        },
        shape: CircleBorder(),
        backgroundColor: Colors.orangeAccent,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 28,
        ),
        splashColor: Colors.orange,
      ),

      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {

          switch(state.runtimeType){
            case CounterIncrementState:
              final successState = state as CounterIncrementState;
              return Center(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("${successState.val.toString()}", style: TextStyle(
                          fontSize: 60
                      ),)
                    ],
                  ),
                ),
              );
            default:
              return Center(child: Text("Not Found"),);
          }
        },
      ),
    );
  }
}
