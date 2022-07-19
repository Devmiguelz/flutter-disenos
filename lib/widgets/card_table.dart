

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [

            _SingleCard(text: 'Home', color: Colors.red, icon: Icons.home),

            _SingleCard(text: 'Transport', color: Colors.green, icon: Icons.car_crash_outlined),

          ]
        ),

        TableRow(
          children: [

            _SingleCard(text: 'Video', color: Colors.pink, icon: Icons.video_camera_back),

            _SingleCard(text: 'Music', color: Colors.purple, icon: Icons.music_note),

          ]
        ),

        TableRow(
          children: [

            _SingleCard(text: 'Folder', color: Colors.cyan, icon: Icons.folder),

            _SingleCard(text: 'Wifi', color: Colors.blueAccent, icon: Icons.wifi),

          ]
        ),

        TableRow(
          children: [

            _SingleCard(text: 'Setting', color: Colors.indigo, icon: Icons.settings),

            _SingleCard(text: 'Bluetooth', color: Colors.yellow, icon: Icons.bluetooth),

          ]
        ),
        
      ],
    );
  }
}


class _SingleCard extends StatelessWidget {

  final String text;
  final IconData icon;
  final Color color;

  const _SingleCard({super.key, required this.text, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {

    final boxDecoration = BoxDecoration(
        color: const Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20),
      );

    return Container(
      margin: const EdgeInsets.all(15),
      height: 180,
      decoration: boxDecoration,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          CircleAvatar(
            backgroundColor: color,
            radius: 30,
            child: Icon(icon, size: 35,),
          ),

          const SizedBox(height: 10,),

          Text(text, style: TextStyle(color: color, fontSize: 18),),

        ],
      ),
    );
  }
}