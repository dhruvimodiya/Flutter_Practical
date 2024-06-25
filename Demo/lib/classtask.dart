import 'package:flutter/material.dart';
class classtask extends StatefulWidget {
  const classtask({super.key});

  @override
  State<classtask> createState() => _classtaskState();
}

class _classtaskState extends State<classtask> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
        title: Text("Class Task"),
      ),
      body: Padding(
        
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text("Hello world"),

                SizedBox(
                    height: 20,
                  ),

                Text("textbox - 2"),

                SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){},
                      child: Text("Ok"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white
                      ),
                  ),

                  SizedBox(
                    width: 10,
                  ),

                  ElevatedButton(onPressed: (){},
                    child: Text("Cancle"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white
                    ),
                  )
                ],
              ),

                SizedBox(
                  height: 20,
                ),

                Row(
                  children: [
                    Column(
                      children: [
                        Icon(Icons.add_chart_outlined),
                        Text("Text-1"),
                        Text("Text-2")
                      ],
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.add_chart_outlined),
                        Text("Text-1"),
                        Text("Text-2")
                      ],
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    Column(
                      children: [
                        Icon(Icons.add_chart_outlined),
                        Text("Text-1"),
                        Text("Text-2")
                      ],
                    )
                  ],

                )
              ],
            ),
            Column(
              children: [
                Text("hello fullter"),
                SizedBox(
                  height: 20,
                ),
                FadeInImage.assetNetwork(
                    height:260,
                    placeholder:"assets/images/ZKZg.gif",
                    image: "assets/images/dog.jpg",
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
