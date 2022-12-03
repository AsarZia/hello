import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:toast/page2.dart';
import 'package:velocity_x/velocity_x.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toast"),
      ),
      body: Container(
        decoration: BoxDecoration(
         // image:DecorationImage(image: NetworkImage('https://thumbs.dreamstime.com/z/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg'),
            //  fit: BoxFit.cover
          image: DecorationImage(image:AssetImage('assets/z.jpg'),
              fit: BoxFit.cover
          ),
        ),
        height: double.infinity,
        width: double.infinity,

        child: Column(
          children: [

            Text(
              "Example of Toast",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 45),
            ).py24(),
            Flexible(
              fit: FlexFit.loose,
              child: Container(
                  height: 60,
                  width: 150,
                  child: ElevatedButton(
                      onPressed: () {
                        ShowSuccess(context);
                      },
                      child: Text("Success Toast"))),
            ),
            SizedBox(height: 20),
            Flexible(
              fit: FlexFit.loose,
              child: Container(
                  height: 60,
                  width: 150,
                  child: ElevatedButton(
                      onPressed: () {
                        ShowError(context);
                      },
                      child: Text("Error Toast"))),
            ),
            SizedBox(height: 20),
            Flexible(
              fit: FlexFit.loose,
              child: Container(
                height: 60,
                width: 150,
                child: ElevatedButton(
                    onPressed: () {
                      ShowDelete(context);
                    },
                    child: Text("Delete Toast")
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 150,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  CustomButton(context);
                },
                child: Text("Custom Button"),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 60,
              width: 150,
              child: ElevatedButton(
                  onPressed: () {
                    SimpleToast(context);
                  },
                  child: Text("Simple Default Toast")),
            ),
            SizedBox(height: 20),
            Container(
              height: 60,
              width: 150,
              child: ElevatedButton(onPressed: (){
                Button2(context);
              },
                  child: Text("Click to go from one activity to another")
              ),
            ),
          ],
        ),
      ),
    );
  }

  void ShowSuccess(BuildContext) {
    MotionToast.success(
      animationCurve: Curves.bounceIn,
      animationDuration: Duration(seconds: 2),
      title: Text(
        "Success Motion Toast",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      description: Text("Example of success motion toast"),
      width: 250,
      height: 100,
    ).show(BuildContext);
  }

  void ShowError(BuildContext) {
    MotionToast.error(
      toastDuration: Duration(seconds: 2),
      animationCurve: Curves.bounceIn,
      title: Text(
        "Error Motion Toast",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      description: Text("Example of Error motion toast"),
      width: 250,
      height: 100,
    ).show(BuildContext);
  }

  void ShowDelete(BuildContext) {
    MotionToast.delete(
      animationCurve: Curves.bounceIn,
      title: Text(
        "Delete Motion Toast",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      description: Text("Example of Delete motion toast"),
      width: 250,
      height: 100,
    ).show(BuildContext);
  }

  void CustomButton(BuildContext) {
    MotionToast(
      animationCurve: Curves.bounceIn,
      primaryColor: Colors.cyan,
      title: Text(
        "Example of Custom Button",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      description: Text("Custom Button"),
      icon: Icons.code,
    ).show(BuildContext);
  }

  void SimpleToast(BuildContext) {
    Fluttertoast.showToast(
      msg: "This is simple Default Toast",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.cyan,
      textColor: Colors.white,
      timeInSecForIosWeb: 1,
      fontSize: 16,
    );
  }
  void Button2 (context){
    Navigator.push(context, MaterialPageRoute(
        builder: (BuildContext context) =>Page2())
    );

  }
}
