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
                          backgroundImage: AssetImage("assets/lezer.jpeg"),
                  ),
            
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text('Marc',style: TextStyle( color: Colors.black ),),
                  Text('en ligne',style: TextStyle( color: Colors.black ),)
                ],
              )
              // Container(
              //     padding: const EdgeInsets.all(8.0), child: Text('YourAppTitle'))

            ],
          )

      ),
      body: Column(
        children: [
          Expanded(child: GroupedListView(
            padding: EdgeInsets.all(10),
            elements: messages,
            groupBy: (message) => DateTime(
              message.data.year,
              message.data.month,
              message.data.day,
            ),
            groupHeaderBuilder: (Message message) => SizedBox(
              height: 40,
              child: Center(
                child: Card(
                  color: Color(0xff41CDFB),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      DateFormat.yMMMd().format(message.data),
                    ),
                    ),
                ),
              ),
            ),
            itemBuilder: (context, Message message) =>  Align(
              alignment: message.textme
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              child: Card(
                  elevation: 8,
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(message.text),
                    ),
                  ),
              
            ),
             )
          ),
          Container(
            color: Colors.grey,
            child:  TextField(
              decoration: const InputDecoration(
                hintText: 'entrer le message'
              ),
              onSubmitted: (text) {
                final message = Message(
                  text: text,
                  data: DateTime.now(),
                  textme: true,
                );
                setState(() {
                  messages.add(message);
                });
              }
            ),
            
          )
        ],
      ),
    );
  }
}
