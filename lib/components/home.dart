import 'package:app5/components/calc.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});


  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Demarrez la calculatrice grâce au bouton ci-dessous',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Calculatrice(),
              ));
            },
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_circle_up),
      ), 
    );
  }
}
