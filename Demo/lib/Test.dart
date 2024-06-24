import 'package:flutter/material.dart';

class test extends StatefulWidget {
  const test({super.key});
// final String title;
  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text("Flutter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text("Hello world"),
            OutlinedButton(
              onPressed: () {},
              child: const Text(
                'flat Button',
                style: TextStyle(color: Colors.amber,fontSize: 13),
              ),
            ),
            InkWell(
              child: Text('hello dhruvi',
                     style: TextStyle(
                       fontSize: 30,
                       color: Colors.pinkAccent,
                       fontWeight: FontWeight.bold
                     ),
              ),
              onLongPress: (){
                print("long press");
              },
            ),
            FadeInImage.assetNetwork(
              height: 150,
              placeholder: "assets/images/ZKZg.gif",
              image: "assets/images/dog.jpg"
            ),
            ElevatedButton(
                onPressed: (){
                  print("button clicked");
                },
                child:Text("Button"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,foregroundColor: Colors.white
                ),
            )
          ],
        ),
      ),
    );
  }
}
