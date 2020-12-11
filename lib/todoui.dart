import 'package:flutter/material.dart';

class TodoUi extends StatefulWidget {
  @override
  _TodoUiState createState() => _TodoUiState();
}

class _TodoUiState extends State<TodoUi> {

  
  final texteditingcontroller = TextEditingController();
  bool validated = true;
  String errtext = "";
  
  void showalertdialog(){
    showDialog(context: context,
    builder: (context) {
      return StatefulBuilder(builder: (context, setState){
        return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      title: Text(
        "Add Task",
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextField(
            controller: texteditingcontroller,
            autofocus: true,
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: "Calibri",
            ),
            decoration: InputDecoration(
              errorText: validated ? null : errtext,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: (){},
                  color: Colors.pinkAccent[400],
                  child: Text(
                    "Add",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: "Calibri",
                      color: Colors.white,
                     ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
      });
    }
  );
  }
  
  Widget mycard(String task){
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 5.0,
      ),
      child: Container(
        padding: EdgeInsets.all(5.0),
        child: ListTile(
          title: Text(
            "$task",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          onLongPress: (){
            print("Should Get Deleted");
          },
        ),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: showalertdialog,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.pinkAccent[400],
      ),
      appBar: AppBar(
        title: Text(
          "My Tasks",
          style: TextStyle(
            fontFamily: "Calibri",
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.pinkAccent[400],
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            mycard("Pay Bill"),
            mycard("Buy Groceries\nMilk\nOrange\nCucumber"),
            mycard("Go to Bank"),
            mycard("Buy Science Book"),
            mycard("Call Carpenter"),
          ],
        ),
      ),
    );
  }
}