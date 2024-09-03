import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //variable
  int _counter = 0 ;
  //metodes
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter(){
    setState(() {
      _counter--;
    });
  }


  //UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('you press the button many times'),
            Text(_counter.toString(),style: TextStyle(fontSize: 40),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: _incrementCounter, child: Text("+",style: TextStyle(fontSize: 30),)),
                ElevatedButton(onPressed: _decrementCounter, child: Text("-",style: TextStyle(fontSize: 30),))

              ],
            )
          ],
        )

      ),
    );
  }
}
