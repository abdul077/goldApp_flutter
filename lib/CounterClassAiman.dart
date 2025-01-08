import 'package:flutter/material.dart';

class CounterClass extends StatefulWidget {
  const CounterClass({super.key});

  @override
  State<CounterClass> createState() => _CounterClassState();
}

class _CounterClassState extends State<CounterClass> {

  int result=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Counter App"),
          centerTitle: true,
          backgroundColor: Colors.lightGreenAccent,
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        IconButton(
                          icon: Icon(Icons.refresh_rounded),
                          onPressed: (){
                            result = 0;
                            setState((){


                            });
                          },
                        ),
                        IconButton
                          (onPressed: (){
                          result++;
                          setState(() {

                          });

                        },
                            icon: Icon(Icons.add)),
                        IconButton
                          (onPressed: (){
                          if(result> 0) {
                            result--;
                            setState(() {});
                          }
                        },icon: Icon(Icons.remove)),
                      ]),
                ),
                SizedBox(height: 20,),
                Center(
                    child:
                    Text('Result= $result')),
              ]),
        )
    );
  }
}