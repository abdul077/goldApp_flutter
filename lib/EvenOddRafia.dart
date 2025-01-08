import 'package:flutter/material.dart';
class EvenOddChecker extends StatefulWidget {
  @override
  _EvenOddCheckerState createState() => _EvenOddCheckerState();
}

class _EvenOddCheckerState extends State<EvenOddChecker> {
  final TextEditingController _controller = TextEditingController();
  String _result = '';
  Color _resultColor = Colors.black;

  void checkEvenOdd() {
    int? number = int.tryParse(_controller.text);
    if (number == null) {
      setState(() {
        _result = 'Please enter a valid number!';
        _resultColor = Colors.red;
      });
    } else {
      setState(() {
        if (number % 2 == 0) {
          _result = 'Even';
          _resultColor = Colors.green;
        } else {
          _result = 'Odd';
          _resultColor = Colors.blue;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Even/Odd Checker'),
        backgroundColor: Colors.teal,
        elevation: 5,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal, Colors.cyan],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Check Even or Odd',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter a number',
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  filled: true,
                  fillColor: Colors.white70,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: checkEvenOdd,
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  backgroundColor: Colors.deepOrange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Check',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 30),
              Text(
                _result,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}