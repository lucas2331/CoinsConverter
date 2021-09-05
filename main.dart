import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
     _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    var conversorResultado = TextEditingController();

    calcularResultado(String Valor){

      if(Valor.isEmpty){
        conversorResultado.text = "00.00";
      }

      else{
        conversorResultado.text = ((double.parse(Valor) / 5.40).toString());
      }

    }

    return Scaffold(
      body: new Center(
        child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),

          alignment: Alignment.center,
          color: Colors.blue,
          child: Column(
            children: [

              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Column(
                    children: [
                      Expanded(
                          child: Text(
                            "Conversor de Moedas",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                      ),
                      Expanded(
                          child: Text(
                            "1 dólar hoje: 5,40",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                      )
                    ],
                  ),
                )
              ),

              Expanded(
                flex: 12,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(0),
                        margin: EdgeInsets.fromLTRB(350, 150, 350, 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                      color: Colors.white,
                                      child: Image.network('data:image/png;base64,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')
                                      ),
                                    flex: 1,
                                  ),

                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.zero,
                                      color: Colors.white,
                                      child: Text("USD", textAlign: TextAlign.center),
                                    ),
                                    flex: 3,
                                  ),

                                  Expanded(
                                    child: Container(
                                      color: Colors.white,
                                      child: Text("Dólar Americano", textAlign: TextAlign.center),
                                    ),
                                    flex: 6,
                                  ),
                                ],
                              )
                            ),
                            Expanded(
                                child: Container(

                                  margin: EdgeInsets.fromLTRB(20, 0, 0, 0),

                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: TextField(

                                    controller: conversorResultado,

                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "00.00"
                                    ),

                                    enabled: false,

                                  ),
                                )
                            ),
                          ],
                        ),
                      )
                    ),
                    Expanded(
                        child: Container(
                          padding: EdgeInsets.all(0),
                          margin: EdgeInsets.fromLTRB(350, 10, 350, 150),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                            color: Colors.white,
                                            child: Image.network('data:image/png;base64,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')
                                        ),
                                        flex: 1,
                                      ),

                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.zero,
                                          color: Colors.white,
                                          child: Text("BRL", textAlign: TextAlign.center),
                                        ),
                                        flex: 3,
                                      ),

                                      Expanded(
                                        child: Container(
                                          color: Colors.white,
                                          child: Text("Real", textAlign: TextAlign.center),
                                        ),
                                        flex: 6,
                                      ),
                                    ],
                                  )
                              ),
                              Expanded(
                                  child: Container(

                                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),

                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30)
                                    ),
                                    child: TextField(

                                      onChanged: (conversao){
                                        calcularResultado(conversao);
                                      },

                                      keyboardType: TextInputType.number,

                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "00.00"
                                      ),
                                    ),
                                  )
                              ),
                            ],
                          ),
                        )
                    ),
                  ],
                )
              ),
            ],
          )
        ),
      )
    );
  }
}


