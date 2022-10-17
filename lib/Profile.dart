import 'package:flutter/material.dart';
import 'dart:html';


class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key, required String title});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {

bool? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', textAlign: TextAlign.center,),

        leading: IconButton(onPressed: () {
        }, icon:Icon(Icons.arrow_back, ),
      ),
      ),

      body: Container(
        //color: Color.fromARGB(255, 253, 253, 253),
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [

            Container(

              child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset('assets/CI.png',),

                      CircleAvatar(
                        radius: 15,
                        child: 
                      Image.asset('assets/ArmCI.jpg', width: 100, height: 100, )
                      , ),
                    
                      
                    ],
                  ),


                ],

              )
              
            ),

            SizedBox(height: 20,),


            ListTile(
              onTap: () {
                
              },
              title: Text('Edit Account'),
              trailing: Icon(Icons.arrow_right_alt),
              tileColor: Color.fromARGB(255, 231, 249, 250),
            ),

            SizedBox(height: 10,),

            ListTile(
              onTap: () {
                
              },
              title: Text('Change Password'),
              trailing: Icon(Icons.arrow_right_alt),
              tileColor: Color.fromARGB(255, 231, 249, 250),
            ),

            SizedBox(height: 10,),

            ListTile(
              onTap: () {
                
              },
              title: Text('Security & Privacy'),
              trailing: Icon(Icons.arrow_right_alt),
              tileColor: Color.fromARGB(255, 231, 249, 250),
            ),
            SizedBox(height: 10,),


            ListTile(
              onTap: () {
                
              },
              title: Text('Language'),
              trailing: Icon(Icons.arrow_right_alt),
              tileColor: Color.fromARGB(255, 231, 249, 250),
            ),

            SizedBox(height: 10,),


             ListTile(
              onTap: () {
                
              },
              title: Text('App Notification'),
              
              tileColor: Color.fromARGB(255, 231, 249, 250),
              trailing: Switch.adaptive(value:true, onChanged: (value) => setState(() {
               this.value=value; }) ,
            
            ),
            ),

            SizedBox(height: 10,),

            ListTile(
              onTap: () {
                
              },
              title: Text('Dark Theme'),
              
              tileColor: Color.fromARGB(255, 231, 249, 250),
              trailing: Switch.adaptive(value: false, onChanged: (value) => setState(() {
               this.value=value; }) ,
            
            ),
            ),

            SizedBox(height: 80,),

            ElevatedButton(onPressed:() {
              
            }, child: Text('Log Out'))


          ],
        ),
      ),
    );
  }
}
