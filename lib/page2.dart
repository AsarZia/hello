import 'package:flutter/material.dart';
import 'package:toast/page3.dart';
import 'package:velocity_x/velocity_x.dart';

import 'main.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              title: Text("this is page 2"),
            ),
            body: WillPopScope(
              onWillPop: () async {
                bool res = await showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text("Confirm"),
                    shape: RoundedRectangleBorder(),
                    actionsAlignment: MainAxisAlignment.center,
                    content: Text("Would you like to go back"),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context, false);
                          },
                          child: Text("No")),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context, true);
                          },
                          child: Text("Yes")),
                    ],
                  ),
                );
                return Future(() => res);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("You are in page 2 or activity or route",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25))
                      .p24(),
                  Container(
                    height: 120,
                    width: 150,
                    child: ElevatedButton(
                        onPressed: () {
                          button1(context);
                        },
                        child:
                            Text("Click hera to go from page 2 to home page")),
                  ),
                ],
              ),
            ),
    );
  }

  void button1(context) {
    // Navigator.push(context, MaterialPageRoute(
    //     builder: (BuildContext context)=>Myapp())
    // );
   // Navigator.pop(context, true);
    Navigator.push(context, MaterialPageRoute(
        builder: (BuildContext context)=>My())
    );
  }
}
