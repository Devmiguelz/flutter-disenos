import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(image: AssetImage('assets/landscape.jpg')),

          _Title(),

          _ButtonSection(),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: const Text('lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', textAlign: TextAlign.justify,)
          ),

        ],
      ),
    );
  }
}

class _Title extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: [

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold),),

              Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.black45),),
            ],
          ),

          Expanded(child: Container(height: 10)),

          const Icon(Icons.star, color: Colors.red),

          const Text('41'),
        ],
      ),
    );
  }
}

class _ButtonSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [

          _ButtonItem(icon: Icons.call, text: 'CALL'),
          _ButtonItem(icon: Icons.near_me, text: 'ROUTE'),
          _ButtonItem(icon: Icons.share, text: 'SHARE'),

        ],
      ),
    );
  }
}

class _ButtonItem extends StatelessWidget {

  final IconData icon;
  final String text;

  const _ButtonItem({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 30,
        ),
        Text(text, style: const TextStyle(color: Colors.blue)),
      ],
    );
  }
}