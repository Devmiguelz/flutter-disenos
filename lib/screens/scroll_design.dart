import 'package:flutter/material.dart';

class ScrollDesignScreen extends StatelessWidget {
   
  const ScrollDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            stops: [0.5,0.5],
            colors: [
              Color(0xff5EE8C5),
              Color(0xff30BAD6),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            _Page1(),
            _Page2(),
          ],
        ),
      )
    );
  }
}

class _Page1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        _Background(),

        _MainContent()
        
      ],
    );
  }
}

class _Page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: (){ },
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xff0098FA),
            shape: const StadiumBorder(),
          ), 
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text('Bienvenido', style: TextStyle(color: Colors.white, fontSize: 30)),
          ),
        ),
      ),
    );
  }
}

class _Background extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      alignment: Alignment.topCenter,
      child: const Image(image: AssetImage('assets/scroll-1.png'), fit: BoxFit.cover,)
    );
  }
}

class _MainContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    const textStyle = TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);

    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
    
          const SizedBox(height: 40),
    
          const Text('11°', style: textStyle,),
    
          const Text('Miercoles', style: textStyle,),
    
          Expanded(child: Container()),
    
          const Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white,)
        ],
      ),
    );
  }
}