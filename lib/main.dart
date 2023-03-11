
import 'package:contacts/icons.dart';
import 'package:flutter/material.dart';

import 'calling.dart';
 import 'homescreen.dart';

void main() => runApp(  
    MaterialApp(    
    debugShowCheckedModeBanner: false,
    routes: {
      "/":(context) => const HomeScreen(),
    },
    
  ),
);

