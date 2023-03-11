import 'package:contacts/listNames.dart';
import 'package:contacts/people.dart';
import 'package:flutter/material.dart';
import 'calling.dart';
import 'icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Padding(
        padding: EdgeInsets.only(top: 110),
        child: Drawer(
          backgroundColor: Colors.white,
          child: Container(
            child: DrawerHeader(
              child:iconsinfo() ,
              ),
          ),
            
        ),
      ),
      
      appBar: AppBar(
        backgroundColor: Colors.blue,
        toolbarHeight: 75,
        elevation: 1,
        shadowColor: Colors.black,
        title: const Text(
          'Contacts',
          style:TextStyle(
            fontSize: 23,
            color: Colors.white,
            letterSpacing:1.2,
          )
        ),
        actions:const[
          Padding(
            padding:  EdgeInsets.all(8.0),
            child: Icon(
              Icons.airplanemode_active,
              size:20,
            ),
          ),
          Padding(
            padding:  EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              size:20,
            ),
          ),
          Padding(
            padding:  EdgeInsets.all(8.0),
            child: Icon(
              Icons.settings,
              size:20,
            ),
          )
        ]
      ),
      body:ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context, index){
          return ListTile(
            onTap: (){
              Navigator.push(
                context,
               MaterialPageRoute(
                builder: (context) => callingScreen(
                  name: "${dataList[index]["Name"]}", 
                  num:dataList[index]["Phone"] ,
                  )
                )
               );
            },
            leading: const CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.person,
                color: Colors.black,
                )
             ),
            title: Text("${dataList[index]["Name"]}"),
            subtitle: Text("${dataList[index]["Phone"]}"),
            trailing: Icon(Icons.info_outline),
          );
        }
        ),
       floatingActionButton: FloatingActionButton(
        onPressed:() {
        },
        child: const Icon(
          Icons.dialpad,
          size: 25,
        ), 
      ),    
    );

  }
}
