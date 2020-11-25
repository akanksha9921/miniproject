import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ForgotScreen extends StatelessWidget{
  TextEditingController editController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
        backgroundColor: Color(0xff0C7EC55),
      ),
      body: Container(
        margin: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
           TextField(
             controller: editController,
             decoration: InputDecoration(hintText: "Enter Email",border: OutlineInputBorder()),
           ),
           SizedBox(
             height: 10,
           ),
           Container(
             child: RaisedButton(
               color: Color(0xff0C7EC55),
               onPressed: (){
                 resetPassword(context);
               },
               child: Text('Reset Password', style: TextStyle(color: Colors.black),),
             ),
           )
         ],
        ),
      )
    );
  }


  void resetPassword(BuildContext context) async{
    if(editController.text.length== 0 || !editController.text.contains("@")){
      Fluttertoast.showToast(msg: "Enter valid email");
      return;
    }
    await FirebaseAuth.instance
        .sendPasswordResetEmail(email: editController.text);
    Fluttertoast.showToast(
        msg: "Reset password link has been sent to yor email. Please follow the instructions in the mail");
    Navigator.pop(context);
  }
}