import 'package:app5/components/img.dart';
import 'package:flutter/material.dart';

class Calculatrice extends StatefulWidget {
  const Calculatrice({super.key});

  @override
  State<Calculatrice> createState() => _CalculatriceState();
}

class _CalculatriceState extends State<Calculatrice> {
  String _number = "0";

  _updatenumber(String nb) {
    setState(() {
      _number = nb;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity, 
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
              ),
              child: Text(
                _number,
                style: const TextStyle(
                  fontSize: 50,
                  color: Colors.black, 
                ),
              ),
            ),
            const SizedBox(height: 20), 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    roundedButton('1', '30'),
                    const SizedBox(height: 10), 
                    roundedButton('4', '30'),
                    const SizedBox(height: 10),
                    roundedButton('7', '30'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    roundedButton('2', '30'),
                    const SizedBox(height: 10),
                    roundedButton('5', '30'),
                    const SizedBox(height: 10),
                    roundedButton('8', '30'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    roundedButton('3', '30'),
                    const SizedBox(height: 10),
                    roundedButton('6', '30'),
                    const SizedBox(height: 10),
                    roundedButton('9', '30'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            roundedButton('0', '30'),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              FloatingActionButton(
                backgroundColor: Colors.blue,
              onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ImagesPage(),
              ));
            },
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_circle_up),
      ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget roundedButton(String text, String fontSize) {
    return Ink(
      decoration: const ShapeDecoration(
        shape: CircleBorder(),
        color: Colors.black,
      ),
      child: InkResponse(
        onTap: () => _updatenumber(text),
        child: Container(
          width: 70,
          height: 70,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color :  Colors.blue,
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: double.parse(fontSize),
                color: Colors.black, 
              ),
            ),
          ),
        ),
      ),
    );
  }
}
