import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = [];
  String product;
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('CDM - Tarefa A2.1'))),
        body: Column(children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: TextField(
            onChanged: (value){
              product = value;
            },
            decoration: InputDecoration(
              hintText: "Digite uma palavra..."
            ),
          ),
          ),
          Container(
              margin: EdgeInsets.all(20.0),
              child: Center(
                child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        _products.add(product);
                      });
                    },
                    child: Text(
                      'ADD',
                      style: TextStyle(fontSize: 22),
                    )),
              )),
              Container(
                height: 350,
                child: ListView.builder(
                itemCount: _products.length,
                itemBuilder: (context, index){
                  return Card(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              child: Text(
                                _products[index],
                                style: TextStyle(fontSize: 18),
                              ),
                              padding: EdgeInsets.all(5.0),
                            )
                          ],
                        ),
                      );
                })
              )
        ]),
      ),
    );
  }
}
