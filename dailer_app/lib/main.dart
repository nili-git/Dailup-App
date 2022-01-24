import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title:"Dailer App",
  home: HomePage(),
),);
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var contactList = [" Nitisa Gyawali", "Bindu KC", "Preeti Khanal", "Shubham Gyawali", "Shankar Bhattrai",
  " Nitisa Gyawali", "Bindu KC", "Preeti Khanal", "Shubham Gyawali", "Shankar Bhattrai",
  "Preeti Khanal", "Shubham Gyawali", "Shankar Bhattrai","Shankar Bhattrai","Shankar Bhattrai","Shankar Bhattrai"];
var phoneNumber = ["983593459", " 747567569", "754568675", "648756783", "487540856", " 747567569",
 "754568675", "648756783", "487540856","983593459", "648756783", "487540856", " 747567569",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Color(0xffb74093),
        title: Text("Dailer App", style: TextStyle(color: Colors.amber, fontStyle: FontStyle.italic,
        fontSize: 20, fontWeight: FontWeight.bold,),),
        leading: Icon(
          Icons.menu,   color: Colors.black,
        ),
      ),
      body: ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (context, index){
          return ListTile(
            leading: Icon(Icons.supervised_user_circle,   color: Colors.black,),
            title: Text(contactList[index], style: TextStyle(color: Colors.white)),
            trailing: IconButton(icon: Icon(Icons.call),   color: Colors.black,
            onPressed: () {
             launch("tel://${phoneNumber[index]}");
            },
            ),
          );
        },

      ),
          backgroundColor: Color(0xffb74093),
    );
  }
}