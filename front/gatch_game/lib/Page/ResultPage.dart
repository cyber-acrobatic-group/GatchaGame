import 'package:flutter/material.dart';


class ResultPage extends StatefulWidget {

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        appBar: AppBar(
          title: Text("Result Page"),
        ),
        body: Center(
          child: Column(
            children: [
              Card(
                margin: EdgeInsets.all(10),
                child: Image.asset("image/youji.jpeg", scale: 2,),
              ),
              Card(
                child: Container(height: 100, width: size.width-10,
                    child: Text("description",)),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                OutlinedButton(
                    onPressed: () => Navigator.of(context).pop(), child: Text("RETRY")),
                OutlinedButton(
                    onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil("/home", ModalRoute.withName("/home")), child: Text("HOME")),
              ]),
            ],
          ),
        )
    );
  }

  void _doGatcha(BuildContext context) {
    // send a message to server for notify having pushed
    // and may need to get the information about photo and description
    Navigator.of(context).pushNamed("result");
  }
}