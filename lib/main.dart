import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var loading = true;
  var buttons = ['1', '2', '3', '4', '5', '6'];
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      setState(() {
        loading = false;
      });
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto'),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(27, 40, 89, 1),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 25, 0, 25),
                child: RichText(
                  text: TextSpan(
                    text: 'MEDIDA',
                    style: TextStyle(
                        fontSize: 36, color: Color.fromRGBO(27, 40, 89, 1)),
                    children: const <TextSpan>[
                      TextSpan(
                          text: ' INTELIGENTE',
                          style: TextStyle(fontWeight: FontWeight.w900)),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 10, 50),
                    child: Image(
                      image: AssetImage('./assets/logo.png'),
                      width: 165,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 50),
                    child: Image(
                      image: AssetImage('./assets/logo_iti.png'),
                      width: 125,
                    ),
                  ),
                ],
              ),
              loading
                  ? Column(
                      children: [
                        Container(
                          child: Image(
                            image: AssetImage('./assets/blueteoth.png'),
                            width: 165,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: SpinKitFadingCircle(
                                  color: Color.fromRGBO(3, 168, 232, 1),
                                  size: 30,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 15),
                                child: Text(
                                  'Processando',
                                  style: TextStyle(
                                      color: Color.fromRGBO(3, 168, 232, 1),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  : Expanded(
                      child: PageView(
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Posto Lorem Ipsum Dolor',
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Color.fromRGBO(27, 40, 89, 1),
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Rua: Sed diam Bairro: Nonummy Nibh',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(27, 40, 89, 1)),
                                ),
                                Text(
                                  'Cidade: Euismod CEP 0022298191',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(27, 40, 89, 1)),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          0, 25, 0, 0),
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                        ))),
                                        child: Text(
                                          'CONFIRMA',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          15, 25, 0, 0),
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<Color>(
                                                    Colors.white),
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18),
                                                    side: BorderSide(
                                                        color: Color.fromRGBO(
                                                            3, 168, 232, 1))))),
                                        child: Text(
                                          'BUSCAR NOVAMENTE',
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  3, 168, 232, 1),
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        onPressed: () {},
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 50, bottom: 10, left: 10),
                                  child: Text(
                                    'Selecionar Bomba',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromRGBO(27, 40, 89, 1),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    for (var item in buttons)
                                      Expanded(
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: CircleBorder(),
                                            side: BorderSide(
                                                color: Color.fromRGBO(
                                                    3, 168, 232, 1)),
                                            padding: EdgeInsets.all(7.5),
                                            primary: Colors.white,
                                            onPrimary:
                                                Color.fromRGBO(3, 168, 232, 1),
                                          ),
                                          child: Text(
                                            item,
                                            style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.w900),
                                          ),
                                          onPressed: () {},
                                        ),
                                      )
                                  ],
                                ),
                                Container(
                                    margin: const EdgeInsets.only(top: 50),
                                    alignment: Alignment.center,
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        child: Container(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 5, 10, 5),
                                          child: Text(
                                            'VERIFICAR BOMBA',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        style: ButtonStyle(
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)))))),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 3,
                                  color: Colors.blue,
                                  margin: const EdgeInsets.only(bottom: 5),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    'Dados do Estabelecimento',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromRGBO(27, 40, 89, 1),
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                                Text(
                                  'Nome: ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(27, 40, 89, 1)),
                                ),
                                Text(
                                  'Localização: ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(27, 40, 89, 1)),
                                ),
                                Container(
                                  height: 3,
                                  color: Colors.blue,
                                  margin:
                                      const EdgeInsets.only(bottom: 5, top: 50),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    'Dados de Abastecimento',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromRGBO(27, 40, 89, 1),
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                                Text(
                                  'Nº da Bomba: ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(27, 40, 89, 1)),
                                ),
                                Text(
                                  'Data: ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(27, 40, 89, 1)),
                                ),
                                Text(
                                  'Hora: ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(27, 40, 89, 1)),
                                ),
                                Text(
                                  'Volume Abastecido: ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(27, 40, 89, 1)),
                                ),
                                Text(
                                  'Preço/litro: ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(27, 40, 89, 1)),
                                ),
                                Text(
                                  'Total a pagar: ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(27, 40, 89, 1)),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(top: 40),
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                    ))),
                                    child: Container(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 5, 10, 5),
                                      child: Text(
                                        'MAIS INFORMAÇÔES',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 40, left: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 3,
                                  color: Colors.blue,
                                  margin:
                                      const EdgeInsets.only(bottom: 5, top: 10),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    'Dados de Verificação',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromRGBO(27, 40, 89, 1),
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                                Text(
                                  'Dados Mediação: ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(27, 40, 89, 1)),
                                ),
                                Text(
                                  'Integridade do Software: ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(27, 40, 89, 1)),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: FractionalOffset.bottomCenter,
                                    child: Padding(
                                        padding: EdgeInsets.only(bottom: 50.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      right: 25, bottom: 30),
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .arrow_downward_outlined,
                                                        color: Color.fromRGBO(
                                                            3, 168, 232, 1),
                                                        size: 18,
                                                      ),
                                                      Container(
                                                        margin: const EdgeInsets
                                                            .only(left: 5),
                                                        child: Text(
                                                          'DOWNLOAD',
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900,
                                                              color: Color
                                                                  .fromRGBO(
                                                                      3,
                                                                      168,
                                                                      232,
                                                                      1)),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 25, bottom: 30),
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .camera_alt_outlined,
                                                        color: Color.fromRGBO(
                                                            3, 168, 232, 1),
                                                        size: 18,
                                                      ),
                                                      Container(
                                                        margin: const EdgeInsets
                                                            .only(left: 5),
                                                        child: Text(
                                                          'NOVA LEITURA',
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900,
                                                              color: Color
                                                                  .fromRGBO(
                                                                      3,
                                                                      168,
                                                                      232,
                                                                      1)),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            ElevatedButton(
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all<
                                                              Color>(
                                                          Color.fromRGBO(
                                                              27, 40, 89, 1)),
                                                  shape: MaterialStateProperty
                                                      .all<RoundedRectangleBorder>(
                                                          RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            18),
                                                  ))),
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        10, 5, 10, 5),
                                                child: Text(
                                                  'RELATAR PROBLEMAS',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              onPressed: () {},
                                            ),
                                          ],
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
            ],
          )),
    );
  }
}
