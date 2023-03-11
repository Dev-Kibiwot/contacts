import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
Row mypeople(String dp, String name, IconData data,String number, String time){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // const SizedBox(height: 20),
          CircleAvatar(
            radius: 25,
            child: Text(
              dp,                 
              style: const TextStyle(
                fontSize: 25,
                letterSpacing: 1.2,
                color: Colors.black,
              ),
            ),
          ),
      const SizedBox(width: 10),            
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text(
                name,                 
                style: const TextStyle(
                  fontSize: 16,                        
                  letterSpacing: 1.2,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
                const SizedBox(width: 8),
                  Row(
                    children: [
                      Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(
                      data,
                      size: 15,
                      color: Colors.green,
                      ),
                ),
                const Icon(
                Icons.sim_card,
                  size: 15,
                color: Color.fromARGB(255, 44, 250, 3),
                ),
              const SizedBox(height: 10.0 ),
              Text(
                number,                 
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white70,
                ),
              ),
                    ],
                  ),
            ],
          ),
        ],
       ),
      ],
    ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Text(
                  time,                 
                  style: const TextStyle(
                    fontSize: 15,
                    letterSpacing: 1.2,
                    color: Colors.white70,
                  ),
                ),
           const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                  Icons.info_outline,
                    size: 25,
                  color: Colors.white70,
                  ),
                ),
              ],
            ),
           ],
         ),
      ),
    ],
  );
}