import 'package:flutter/material.dart';

class EvenOddScreenSharjeel extends StatefulWidget {
  @override
  _EvenOddScreenState createState() => _EvenOddScreenState();
}

class _EvenOddScreenState extends State<EvenOddScreenSharjeel> {
  TextEditingController _controller = TextEditingController();
  String _result = '';

  // Function to check if the number is even or odd
  void _checkEvenOdd() {
    final int? number = int.tryParse(_controller.text);

    if (number != null) {
      setState(() {
        _result = (number % 2 == 0) ? 'Even' : 'Odd';
      });
    } else {
      setState(() {
        _result = 'Please enter a valid number.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Even Odd Checker'),
        backgroundColor: Colors.teal,  // Updated app bar color
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.teal.shade100, Colors.teal.shade400],  // Gradient background for body
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Enter a number to check if it\'s Even or Odd:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                style: TextStyle(color: Colors.black),  // Text input color is now black for contrast
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,  // White background for the text field
                  border: OutlineInputBorder(),
                  labelText: 'Number',
                  labelStyle: TextStyle(color: Colors.teal),  // Label color changed to teal
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal, width: 2),  // Focused border color
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _checkEvenOdd,
                child: Text('Check', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.teal),  // Button color updated to teal
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 30, vertical: 15)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),  // Rounded button
                ),
              ),
              SizedBox(height: 20),
              Text(
                _result,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),  // White result text
              ),
            ],
          ),
        ),
      ),
    );
  }
}
