import 'dart:html';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Container(
        padding: EdgeInsets.all(20),
        color: Color(0xf9f9f9),
        child: Column(
          children: [
            Row(
              children:  [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/lezer.jpeg"),
                ),
                Column(
                  children: [
                    Text('Viera'),
                    Text('Marc Oula'),
                  ],
                ),
                SizedBox(width: 140,),
                Icon( Icons.search, color: Color.fromARGB(255, 32, 30, 30), size: 40.0,),
                Icon( Icons.menu, color: Color.fromARGB(255, 32, 30, 30), size: 40.0,),
              ],
            ),
            Container(
              height: 10,
            ),
            Container(
              constraints: BoxConstraints.expand(height: 50),
              child:  const TabBar(
                indicatorColor: Colors.red,
                indicatorWeight: 10,
                
                tabs: [
                Tab(
                  
                  child: Text('Description',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
                  ),
                Tab(child: Text('Review',style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),),
                // Colors.black,
              ]
              ),
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                  children: [
                    ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return  Card(
                          // margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                          child: ListTile(
                              leading: const CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage("assets/lezer.jpeg"),
                                 ),
                              title: Text('Oula Marc Viera'),
                              subtitle: Text('Hello Words'),
                              trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("10.00 PM"),
                                  Container(
                                    height: 15,
                                    width: 15,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                      color: Color.fromARGB(0, 80, 186, 218),
                                    ),
                                    
                                    child: const Center(
                                      child: Text('1',style: TextStyle(color: Colors.black)
                                      ),
                                    )
                                  ),
                                ],
                              ),
                          ),
                        );
                        
                      },
                      ),
                  Container(child: Text('ggggggg'),),
                ]),
            )
            ),
          ],
        ),
        ),
        
      ),
    );
  }
}

class onzek extends StatelessWidget {
  const onzek({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
    );
  }
}