import 'package:flutter/material.dart';

class EvenOddAiman extends StatefulWidget {
  const EvenOddAiman({super.key});

  @override
  State<EvenOddAiman> createState() => _EvenOddState();
}
class _EvenOddState extends State<EvenOddAiman> {
  @override
  int n1=0;
  int res=0;
  String _result = '';
  TextEditingController n1Controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'even/odd',
        home: Scaffold(
            backgroundColor: Colors.white,
            floatingActionButton: FloatingActionButton(backgroundColor:Colors.pinkAccent, onPressed:(){
              n1=int.parse(n1Controller.text);
              int mod=res=n1%2;
              setState(() {
                if(mod==0)
                  _result = 'The number $n1 is Even';
                if(mod==1)
                  _result = 'The number $n1 is odd';
              });
            }
            ),
            appBar: AppBar(title:Text('Even/Odd Checker',),backgroundColor: Colors.pinkAccent,
              centerTitle: true,),
            body: Padding(
                padding:  EdgeInsets.all(100.0),
                child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.pinkAccent,
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: TextFormField(
                          style: TextStyle(color: Colors.black),
                          controller: n1Controller,
                          decoration: InputDecoration(
                            hintText: 'Enter Your Number',
                          ),
                        ),
                      ),
                      SizedBox(height:20),
                      Text('$_result')
                    ]
                )
            )
        )
    );
  }
}