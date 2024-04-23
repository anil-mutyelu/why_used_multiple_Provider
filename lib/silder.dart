import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main.dart';


void main() {
  runApp(const MyApp());
}


class provedexmple4 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return _provedexmple4();
  }

}


class _provedexmple4 extends State <provedexmple4> {

  // @override
  // void initState() {
    //   final cp = Provider.of<countp2>(context,listen: false);
    //
    //   super.initState();
    //   // Timer(const Duration(seconds: 1), (timer) {
    //   Timer.periodic(const Duration(seconds: 1), (timer) {
    //     cp.setCount();
    //
    //     //  print("not used setState beacues build method called all time");
    //     //
    //     // setState(() {
    //     //
    //     // });
    //
    //
    //   });
    // }

    double data = 1;


    @override
    Widget build(BuildContext context) {
      print("build-------------------");

      return Scaffold(
        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.greenAccent,
            // child: Center(child: Text(cp.count.toString(),style: (TextStyle(fontSize: 60)),)),
            // child: Consumer<countp2>(builder: (context,value,child)
            // {
            //   print("only this consumer method biuld");
            //   return Center(child: Text(value.count.toString(),style: (TextStyle(fontSize: 60)),));
            // }),
            child: Center(
              child: Column(
                children: [

                  Text('{$data}'),

                  Center(

                    child: Slider( min:0,max:1 ,value: data, onChanged: (val) {
                             data=val;
                             print(data);
                             setState(() {

                             });

                    }),
                  ),




                  Container(
                    width: 124,
                    height: 242,
                    color: Colors.black45.withOpacity(data),
                  ),
                  Container(
                    width: 124,
                    height: 242,
                    color: Colors.yellow.withOpacity(data),
                  )

                ],
              ),
            ),

          ),
        ),
      );
    }
  }


