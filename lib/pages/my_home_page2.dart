
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  String text1="";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container (
        width: 500,
        height: 300,
        color: Colors.green,
        margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child:  Center(
          child: Column(
          children:[
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
            onTap: (){
              debugPrint("Hello Click");
                setState(() {

                });
              },
            onDoubleTap: (){
              debugPrint("Hello Click22");
            },
            onLongPress: (){
              debugPrint("Hello Click333");
            },
            child: const Text("Hello")
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: (){
                  debugPrint("Button Click333");
                 },
                child: const Text("Click Me")
            ),
            const SizedBox(
              height: 20,
            ),
            Text(text1, style: TextStyle(color: Colors.red)),
            TextField(
              onChanged: (value){
                text1=value;
                debugPrint(value);
                setState(() {

                });
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Image.network("https://th.bing.com/th/id/OIP.weIfgrocIqeD49E8iif-ZwAAAA?pid=ImgDet&rs=1",
            height:50,
              width: 50,
            ),


          ]
          ),
        ),
      ),

    );
  }
}