import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  //text editing controller to get access to what user typed
  TextEditingController _myController = TextEditingController() ;

  //greet User method
  String greetingMessage = "";

  //greetng message
  void _greetingMessage(){
    setState(() {
      greetingMessage = "hello ," + _myController.text;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(


        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(greetingMessage),

          TextField(
            controller: _myController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "type somthing" ,
            ),
          ),
          ElevatedButton(onPressed: _greetingMessage, child: Text("click"))
        ],
        )
      ),
    );
  }
}
