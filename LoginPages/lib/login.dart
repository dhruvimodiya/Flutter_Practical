import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';
class login extends StatefulWidget {
  const login({super.key});
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();
  String str = "";
  void display(){
    setState(() {
      str = username.text;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Login Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 110.0),
              child: Center(
                child: Container(
                  width: 200,
                  height: 100,
                  child: Image.asset('assets/images/login.jpg'),
              ),
            ),
            ),

            Padding(
                padding: EdgeInsets.symmetric(horizontal: 80 ,vertical: 10),
                child: TextField(
                  controller: username,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "username",
                    hintText: "enter username"
                  ),
                ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 10),
              child: TextField(
                controller: password,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "password",
                  hintText: 'enter your password'
                ),
              ),
            ),

            SizedBox(
              height: 65,
              width:360,
              child: Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: ElevatedButton(

                  style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(Colors.indigo)),
                  child: const Text('login',style: TextStyle(color:Colors.white,fontSize: 20),),
                  onPressed: (){
                    Navigator.of(context).  push(
                      MaterialPageRoute(builder: (context)=>home(name : username.text)
                      )
                    );
                    print("successfully log in");
                    print(username);
                    print(password);
                  },
                ),
              ),
            ),

            SizedBox(
              height: 50,
            ),

            Container(
              child: Center(
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 100),
                    child: Text('forgot your login details?'),
                    ),

                    Padding(padding: EdgeInsets.only(left: 1.0),
                    child: InkWell(
                      onTap: (){
                        print("Hello");
                      },
                      child: Text('get help loggin in ',
                        style: TextStyle(fontSize: 14,color: Colors.blue),
                      ),
                    ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
