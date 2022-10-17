import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:grouped_list/grouped_list.dart';

import 'PagePrincipal.dart';

class Message {
  final String text;
  final DateTime data;
  final bool textme;
  


  const Message ({
    required this.text,
    required this.data,
    required this.textme,
    
  });
}

class onzek extends StatefulWidget {
  const onzek({super.key, required String title});

  @override
  State<onzek> createState() => _onzekState();

}

class _onzekState extends State<onzek> {

  List<Message> messages = [
    Message(
      text: 'hey marczer',
      data: DateTime.now().subtract(Duration(minutes: 1)),
      textme: false,
      ),
    Message(
      text: 'hey marc',
      data: DateTime.now().subtract(Duration(days: 2, minutes: 3)),
      textme: true,
      
      ),
    Message(
      text: 'ddd',
      data: DateTime.now().subtract(Duration(days: 2,minutes: 10)),
      textme: false,
     
      ),
  ].reversed.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff9f9f9),
          leading: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  MyHomePage(title: '',),
                  )
                );
                },
                icon: Icon( Icons.arrow_back, color: Color.fromARGB(255, 32, 30, 30), size: 30.0,),
                ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/images/lezer.jpeg"),
                  ),
            
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text('Marc',style: TextStyle( color: Colors.black ),),
                  Text('en ligne',style: TextStyle( color: Colors.black ),)
                ],
              )
            ],
          )
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.80,
                    ),
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: Color(0xffe6f9ff),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text('hey marczer'),
                    ),
                  ),
                Row(
                  children: [
                    Container(
                      child: Text("10.00 PM",style: TextStyle(fontSize: 12),),
                      ),
                  ],
                ),

                Container(
                  alignment: Alignment.topRight,
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.80,
                    ),
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: Color(0xff41CDFB),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text('hey marc'),
                    ),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      child: Text("10.00 PM",style: TextStyle(fontSize: 12),),
                      ),
                  ],
                ),

                Container(
                  alignment: Alignment.topLeft,
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.80,
                    ),
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: Color(0xffe6f9ff),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text('oui ndkw tu a fini de manger '),
                    ),
                  ),
                Row(

                  children: [
                    Container(
                      child: Text("10.00 PM",style: TextStyle(fontSize: 12),),
                      ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            height: 70,
            color: Colors.white,
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.photo),
                  iconSize: 25,
                  onPressed: () {},
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: "commencer a ecrit"
                      ),
                      textCapitalization: TextCapitalization.sentences,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  iconSize: 25,
                  onPressed: () {},
                ),
              ]
            )
            
            )
            ]
      ),
    );
  }
}
