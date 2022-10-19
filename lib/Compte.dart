import 'dart:html';
import 'dart:io';

import'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MonCompte extends StatefulWidget {
  const MonCompte({super.key});

  @override
  State<MonCompte> createState() => _MonCompteState();
}

class _MonCompteState extends State<MonCompte> {
  File? imageFile;

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  leading: IconButton(onPressed: () {
    
  }, icon:Icon(Icons.arrow_back)),

  title: Text('Mon Compte', textAlign: TextAlign.start,),
),
body: Center(
  child: Column(
    children: [

      Container(
        child: Container(
          child: Stack(children: [  

                      CircleAvatar(
                        backgroundColor: Colors.amber,
                        radius: 50,
                        child: 
                      Image.asset('assets/ArmCI.jpg', )
                      ,),
                    Expanded(child: IconButton(onPressed: () => getImage(source: ImageSource.gallery), icon: Icon(Icons.image_search)))
            
          ]),
        ),
      ),
      SizedBox(height: 10,),
      Container(
        child: ListView(
          children: [
            ListTile(
              title: Text("Oumar Koné"),
              leading: IconButton(onPressed:() {
                
              }, icon: Icon(Icons.person)),
              trailing: IconButton(onPressed: () {
                
              }, icon: Icon(Icons.edit)),
              subtitle: Text('Ceci est votre Nom d\'utilisateur, vous pouvez le modifiifer'),
            ),
            SizedBox(height: 10,),


            ListTile(
              title: Text("Abou You"),
              leading: IconButton(onPressed:() {
                
              }, icon: Icon(Icons.help)),
              trailing: IconButton(onPressed: () {
                
              }, icon: Icon(Icons.edit)),
              subtitle: Text('Ceci est votre Nom d\'utilisateur, vous pouvez le modifiifer'),
            ),
            SizedBox(height: 10,),

            ListTile(
              title: Text("Your Phone Number"),
              leading: IconButton(onPressed:() {
                
              }, icon: Icon(Icons.call)),
             
              subtitle: Text('0788335300'),
            ),

          ],
        ),
      )
    ] ,
  ),
),
    );
  }
  void getImage({required ImageSource source}) async {
    final file = await ImagePicker().pickImage(source: source);

    if(file?.path !=null){
      setState(() {
        imageFile = File(file!.path);
      });
    }
  }
}