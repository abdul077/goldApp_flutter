import 'package:flutter/material.dart';
class GoldApp extends StatefulWidget {
  const GoldApp({super.key});

  @override

  State<GoldApp> createState() => _GoldAppState();
}

class _GoldAppState extends State<GoldApp> {
  TextEditingController goldPriceController=TextEditingController();
  TextEditingController tolaQuantityController=TextEditingController();
  TextEditingController gramQuantityController=TextEditingController();
  double res=0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(onPressed: (){
        double goldPrice=double.parse(goldPriceController.text);
        double tolaQuantity=double.parse(tolaQuantityController.text);
        double gramQuantity=double.parse(gramQuantityController.text);
        double pricePerGram=goldPrice/12;
        double totalGramPrice=pricePerGram*gramQuantity;
        res=(goldPrice*tolaQuantity)+totalGramPrice;
        setState(() {

        }
        );
      }
      ),

      appBar: AppBar(
        title: Text('Gold App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 38),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.orange.shade600,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: goldPriceController,
                  decoration: InputDecoration(hintText: 'Enter Tola Price')
              ),

            ),
            SizedBox(height: 10,),
            Container(

              decoration: BoxDecoration(
                color: Colors.orange.shade600,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: tolaQuantityController,
                  decoration: InputDecoration(hintText: 'Enter Tola Quantity')
              ),

            ),
            SizedBox(height: 10,),
            Container(

              decoration: BoxDecoration(
                color: Colors.orange.shade600,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: gramQuantityController,
                  decoration: InputDecoration(hintText: 'Enter Gram Quantity')
              ),
            ),
            SizedBox(height: 10,),
            Container(

              decoration: BoxDecoration(
                color: Colors.orange.shade600,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: gramQuantityController,
                  decoration: InputDecoration(hintText: 'Enter Ratti Quantity')
              ),
            ),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                color: Colors.orange.shade600,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: gramQuantityController,
                  decoration: InputDecoration(hintText: 'Enter Points Quantity')
              ),
            ),
            SizedBox(height: 30,),
            Text('Total Price Rs.$res',style: TextStyle(color: Colors.orange[700],fontSize: 25),),
            SizedBox(height: 10,),
            Text('Total Quantity Rs.$res',style: TextStyle(color: Colors.orange[700],fontSize: 25),),
            SizedBox(height: 10,),
            Text('Total Ratti Quantity Rs.$res',style: TextStyle(color: Colors.orange[700],fontSize: 25),),
            SizedBox(height: 10,),
            Text('Garam Total Price Rs.0',style: TextStyle(color: Colors.orange[700],fontSize: 25),),
            SizedBox(height: 10,),
            Text('Total Tola Price Rs.0',style: TextStyle(color: Colors.orange[700],fontSize: 25),)
          ],
        ),
      ),
    );
  }
}
