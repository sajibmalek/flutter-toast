import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main(){
  runApp(ToastMessage());
}

class ToastMessage extends StatelessWidget {
  const ToastMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Flutter Toast Message",
      debugShowCheckedModeBanner: false,
      home: message(),
    );
  }
}

class message extends StatelessWidget {
  const message({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Toast Message"),
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: ElevatedButton(onPressed: (){
              _message("TOP_LEFT",ToastGravity.TOP_LEFT);
            },child: const Text("TOP_LEFT"),),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: ElevatedButton(onPressed: (){
              _message("TOP_RIGHT",ToastGravity.TOP_RIGHT);
            },child: const Text("TOP_RIGHT"),),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: ElevatedButton(onPressed: (){
              _message("Top", ToastGravity.TOP);
            },child: const Text("Top"),),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: ElevatedButton(onPressed: (){
              _message("Center", ToastGravity.CENTER);
            },child: const Text("CENTER"),),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: ElevatedButton(onPressed: (){
              _message("CENTER_LEFT", ToastGravity.CENTER_LEFT);
            },child: const Text("CENTER_LEFT"),),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: ElevatedButton(onPressed: (){
              _message("CENTER_RIGHT", ToastGravity.CENTER_RIGHT);
            },child: const Text("CENTER_RIGHT"),),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: ElevatedButton(
              onPressed:(){
              _message("BOTTOM", ToastGravity.BOTTOM);
            },child: const Text("BOTTOM"),),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: ElevatedButton(onPressed: (){
              _message("BOTTOM_LEFT", ToastGravity.BOTTOM_LEFT);
            },child: const Text("BOTTOM_LEFT"),),
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: ElevatedButton(onPressed: (){
              _message("BOTTOM_RIGHT", ToastGravity.BOTTOM_RIGHT);
            },child: const Text("BOTTOM_RIGHT"),),
          ),
        ],
      ))
    );
  }
}
Future<bool?> _message(msg,gravity)   {
  return Fluttertoast.showToast(
      msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    timeInSecForIosWeb: 1,
    fontSize: 16,
    textColor: Colors.white,
    //backgroundColor: Colors.white,
    gravity: gravity,


  );
}
