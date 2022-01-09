import 'package:flutter/material.dart';


class GatchaPage extends StatefulWidget {

  @override
  _GatchaPageState createState() => _GatchaPageState();
}

class _GatchaPageState extends State<GatchaPage> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        appBar: AppBar(
          title: Text("Gathca Page"),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("image/gatcha.png", scale: 3,),
              SizedBox(height: 50,),
              OutlinedButton(
                  onPressed: () => _doGatcha(context), child: Text("Do Gatcha"))
            ],
          ),
        )
    );
  }
  
  void _doGatcha(BuildContext context) {
    // send a message to server for notify having pushed
    // and may need to get the information about photo and description
    Navigator.of(context).pushNamed("/result");
  }
}