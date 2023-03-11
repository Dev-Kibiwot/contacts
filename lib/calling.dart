
import 'package:contacts/homescreen.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class callingScreen extends StatefulWidget {
  String name;
  String num;
  callingScreen({super.key, required this.name,required this.num});

  @override
  State<callingScreen> createState() => _callingScreen();
}

class _callingScreen extends State<callingScreen> {  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(           
          children:  [ 
             const Padding(
               padding: EdgeInsets.only(top: 80.0),
               child: CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 45,
                 child: Icon(
                         Icons.person,
                         color: Colors.white,
                         size: 75,
                  ),
               ),
             ), 
             const SizedBox(height: 10),
             Padding(
               padding:  EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.25
               ),
               child: Text(
                widget.name,
                style: TextStyle(
                  color:Colors.black54,
                  fontSize: 25,
                  )
               ),
             ),
             const SizedBox(height: 10),
             Padding(
               padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.3
               ),
               child: Row(
                 children: [
                   Icon(
                    Icons.sim_card_sharp,
                    size: 18,
                    color: Colors.red,
                   ),
                   Text(
                    widget.num,
                     style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                     ),
                             ),
                 ],
               ),
             ),
             const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.25
              ),
              child: const Text(
                "Calling...",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                 ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height *0.15,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:  [
                    Column(
                      children: const [
                        Icon(Icons.video_file_rounded,
                        color: Colors.white,
                        size: 30,
                        ),
                        Text("Start recording",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                        ),
                      ],
                    ),
           Column(
             children: const [
             Icon(
                    Icons.mic_off,
                    color: Colors.white,
                    size: 30,
                    ),
                    Text("Mute",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                            ),
             ],
           ),
           Column(
             children: const [
             Icon(Icons.add,
             color: Colors.white,
             size: 30,
                     ),
                     Text("Add Call",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                            ),
             ],
           ),
                ],
          ),
          const SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:  [
                    Column(
                      children: const [
                        Icon(Icons.video_call,
                        size: 30,
                        color: Colors.white,
                        ),
                        Text("Video call",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                            ),
                      ],
                    ),
           Column(
             children: const [
             Icon(
                    Icons.pause,
                    color: Colors.white,
                    size: 30,
                    ),
                    Text("Hold",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                            ),
             ],
           ),
           Column(
             children: const [
             Icon(
              Icons.person,
              size: 30,
             color: Colors.white,
                     ),
                     Text("Contacts",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                            ),
             ],
           ),
                ],
          ),
          const SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(
                    Icons.dialpad,
                    color: Colors.white,
                     size: 30,
                    ),
           TextButton(
                onPressed: (){
                  Navigator.pop(
                 context,
           MaterialPageRoute(builder: (context) => const HomeScreen()),
           );
                    },
                child:  const CircleAvatar(
           radius: 25,
           backgroundColor: Colors.red,
                child: Icon(
                 Icons.call_end,
                 color: Colors.white,
                 size: 30,
                 ),
                    ),
           ),
           const Icon(
            Icons.volume_up_outlined,
            size: 30,
           color: Colors.white,
                 ),
                ],
          ),
              ],
            ),
        ]
     ),
      )
    );
  }
}