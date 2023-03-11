import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class iconsinfo extends StatefulWidget {
  const iconsinfo({Key? key}) : super(key: key);

  @override
  State<iconsinfo> createState() => _iconsinfoState();
}

class _iconsinfoState extends State<iconsinfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: ListView(
        children: [
          Row(
            children:  [
              Icon(Icons.flash_on),
              Column(
                children: [
                  Text("Flash for calls"),
                  Text("Flash will alert continuosly when locked",
                   style:TextStyle(
                    fontSize: 10,
                    color: Colors.black45,
                   ),
                  ),
                ],
              ),
              
              Icon(Icons.check_circle),
            ],
          ),
        ],
      ),
     );
    
    
  }
  }