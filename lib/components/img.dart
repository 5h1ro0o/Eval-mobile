import 'package:flutter/material.dart';
import 'package:app5/components/calc.dart';

void main() {
  runApp(ImagesPage());
}

class ImagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Images(),
      debugShowCheckedModeBanner: false, 
    );
  }
}

class Images extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Personne heureuse"),
      ),
      body: Center(
        child: Image.asset('lib/img/img1.png'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Calculatrice(),
            ),
          );
        },
        tooltip: 'Increment',
        child: Icon(Icons.arrow_circle_up),
      ),
    );
  }
}
