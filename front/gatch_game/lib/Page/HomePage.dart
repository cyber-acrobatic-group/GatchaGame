import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Gatcha Game"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ガチャゲーム（仮）", style: TextStyle(fontSize: 20),),
            SizedBox(height: 100,),
            OutlinedButton(onPressed: () => _openDialog(context), child: Text("Login"))
        ],
      ),
    ));
  }

  void _openDialog(BuildContext context) {
    String _userName = "";
    String _password = "";
    final _form = GlobalKey<FormState>();

    showDialog<Widget>(
      context: context,
      builder: (BuildContext context) => SimpleDialog(title: Text('ユーザー名とパスワードを入力してください'),
        contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        children: [
          Form(
            key: _form,
            child: Column(
              children: [
                TextFormField(style: TextStyle(fontSize: 13),
                  decoration: InputDecoration(
                      labelText: 'ユーザー名',
                      helperText: 'ユーザー名を入力してください'
                  ),
                  onSaved: (value) => _userName = value,
                ),

                TextFormField(style: TextStyle(fontSize: 13),
                  decoration: InputDecoration(
                      labelText: 'パスワード',
                      helperText: 'パスワードを入力してください'
                  ),
                  onSaved: (value) => _password = value,
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: () {
            _form.currentState.save();
            if(_form.currentState.validate() == true) {
              // something to do for checking userinf
              Navigator.of(context).pushNamed("/gatcha");
            }
          }, child: Text("Login"),),
        ],
      ),
    );
  }
}

