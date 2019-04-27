import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new First(),
  ));
}

class First extends StatefulWidget {
  @override
  _FirstState createState() {
    return _FirstState();
  }
}

class _FirstState extends State<First> {
  TextEditingController textFieldController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Primera pantalla")
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.all(32.0),
              child: new TextField(
                autofocus: true,
                controller: textFieldController,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
            ),
            new RaisedButton(
              child: new Text("Mostrar pantalla"),
              onPressed: () {
                Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new Second(data: textFieldController.text))
                );
              },
            )
          ],
        ) 
      ),
    );
  }
}

class Second extends StatelessWidget {
  final String data;
  const Second({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Segunda Pantalla'),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(data),
            new RaisedButton(
              child: new Text('Volver'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        )
      ),
    );
  }
}