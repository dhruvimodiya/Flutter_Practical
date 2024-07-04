import 'package:flutter/material.dart';
import 'package:loginregis/home.dart';
import 'package:loginregis/scrollview.dart';
class login extends StatefulWidget {
  const login({super.key});
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();
  String str_username="";
  String str_password="";
  void diplay(){
    setState(() {
      str_password = username.text;
      str_password = password.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Login here",style: TextStyle(fontSize: 25,color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            Padding(padding: EdgeInsets.only(top: 110.0,left: 15),
              child: Center(
                child: Container(
                  child: Text("Login",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.indigo),),
                ),
              ),
            ),

            Padding(padding: EdgeInsets.symmetric(horizontal: 80,vertical: 10),
                child: Center(
                  child: TextField(
                    controller: username,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "username",
                        hintText: "enter username"
                    ),
                  ),
                )
            ),

            Padding(padding: EdgeInsets.symmetric(horizontal: 80,vertical: 10),
              child: Center(
                child: TextField(
                  controller: password,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "password",
                      hintText: ("enter your password")
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 65,
              width: 360,
              child: Center(
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.black)),
                  onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=>home(name: username.text, pass: password.text,))
                    );
                    print(username);
                    print(password);
                  },
                  child: Text("login",style: TextStyle(fontSize: 15,color: Colors.white),),

                ),
              ),
            ),

            Padding(padding: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.access_alarm_outlined , size: 50,color: Colors.pink),
                  Icon(Icons.access_alarm_outlined, size: 50,color: Colors.pink),
                  Icon(Icons.access_alarm_outlined, size: 50,color: Colors.pink),
                  Icon(Icons.access_alarm_outlined, size: 50,color: Colors.pink),
                  Icon(Icons.access_alarm_outlined, size: 50,color: Colors.pink),
                ],
              ),
            ),

            // Padding(padding: EdgeInsets.symmetric(vertical: 20),
            //   child: Center(
            //     child: InkWell(
            //       onTap:(){
            //         Navigator.of(context).push(
            //           MaterialPageRoute(builder: (context)=>scrollview())
            //         );
            //         print("press the link");
            //       },
            //     ),
            //   ),
            // )

          ],
        ),
      ),
    );
  }
}


