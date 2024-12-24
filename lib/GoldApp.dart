import 'package:flutter/material.dart';

class GoldApp extends StatefulWidget {
  const GoldApp({super.key});

  @override
  State<GoldApp> createState() => _GoldAppState();
}

class _GoldAppState extends State<GoldApp> {
  TextEditingController goldPriceController = TextEditingController();
  TextEditingController tolaQuantityController = TextEditingController();
  TextEditingController gramQuantityController = TextEditingController();
  double res = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          double goldPrice = double.parse(goldPriceController.text);
          double tolaQuantity = double.parse(tolaQuantityController.text);
          double gramQuantity = double.parse(gramQuantityController.text);
          double pricePerGram = goldPrice / 12;
          double totalGramPrice = pricePerGram * gramQuantity;
          res = (goldPrice * tolaQuantity) + totalGramPrice;
          setState(() {});
        },
        backgroundColor: Colors.lightBlue.shade600, // Sky blue color
        child: Icon(Icons.calculate, size: 30),
      ),
      appBar: AppBar(
        title: Text('Gold Price Calculator'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue.shade600, // Sky blue color
        elevation: 5,
      ),
      body: SingleChildScrollView(  // Add SingleChildScrollView here for vertical scrolling
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTextField(goldPriceController, 'Enter Tola Price'),
            SizedBox(height: 15),
            buildTextField(tolaQuantityController, 'Enter Tola Quantity'),
            SizedBox(height: 15),
            buildTextField(gramQuantityController, 'Enter Gram Quantity'),
            SizedBox(height: 15),
            buildTextField(gramQuantityController, 'Enter Ratti Quantity'),
            SizedBox(height: 15),
            buildTextField(gramQuantityController, 'Enter Points Quantity'),
            SizedBox(height: 30),
            buildResultText('Total Price: Rs. $res'),
            SizedBox(height: 10),
            buildResultText('Total Quantity: Rs. $res'),
            SizedBox(height: 10),
            buildResultText('Total Ratti Quantity: Rs. $res'),
            SizedBox(height: 10),
            buildResultText('Gram Total Price: Rs. 0'),
            SizedBox(height: 10),
            buildResultText('Total Tola Price: Rs. 0'),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(TextEditingController controller, String hintText) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.number,
        style: TextStyle(color: Colors.black, fontSize: 16),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey.shade500),
        ),
      ),
    );
  }

  Widget buildResultText(String text) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.lightBlue.shade600, // Sky blue color for result texts
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
