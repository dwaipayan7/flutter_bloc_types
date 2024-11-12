import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
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
        onPressed: (){

        },
        shape: CircleBorder(),
        backgroundColor: Colors.orangeAccent,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 28,
        ),
        splashColor: Colors.blueAccent,
      ),
      
      body: Container(
        child: Column(
          children: [
            
          ],
        ),
      ),
    );
  }
}
