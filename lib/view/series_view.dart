import 'package:flutter/material.dart';

class SeriesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.yellow[100],
      child: getGridView(context),
    );
  }
}

Widget getGridView(BuildContext context) {
  return GridView.count(
    shrinkWrap: true,
    crossAxisCount: 2,
    primary: false,
    childAspectRatio: (MediaQuery.of(context).size.width - 10 / 2) / 240,
    children: <Widget>[
      createSerie('Chernobyl ', '9,4', '2008'),
      createSerie('Breaking Bad', '9,4', '2019'),
      createSerie('Rick e Morty', '9,2', '2013'),
      createSerie('Death Note', '8,9', '2006'),
      createSerie('Liga da Justiça', '8,5', '2001'),
      createSerie('Samurai X', '8,4', '1996'),
      createSerie('Atlanta', '8,6', '2016'),
      createSerie('Eu, Cláudio', '8,7', '1976'),
    ],
  );
}

Widget createSerie(String titulo, String nota, String ano) {
  return Padding(
    padding: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 0),
    child: Container(
      child: GestureDetector(
        child: Material(
          elevation: 1.0,
          borderRadius: BorderRadius.circular(4.0),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 30, bottom: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      titulo,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      'Nota: ' + nota,
                      style: TextStyle(fontSize: 13, color: Colors.black),
                    ),
                    Text(
                      'Lançamento: ' + ano,
                      style: TextStyle(fontSize: 13, color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
