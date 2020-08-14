import 'package:flutter/material.dart';

class FilmesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 5, right: 5),
        color: Colors.yellow[100],
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 3,
            ),
            GradeItem(
              nome: 'Um Sonho de Liberdade',
              nota: '9.2',
            ),
            GradeItem(
              nome: 'Matrix',
              nota: '8,6',
            ),
            GradeItem(
              nome: 'A Viagem de Chihiro',
              nota: '8,5',
            ),
            GradeItem(
              nome: 'Laranja Mecânica ',
              nota: '8,2',
            ),
            GradeItem(
              nome: 'Interestelar ',
              nota: '8,3',
            ),
            GradeItem(
              nome: '1917',
              nota: '10',
            ),
            GradeItem(
              nome: 'Vá e Veja ',
              nota: '8.2',
            ),
          ],
        ));
  }
}

class GradeItem extends StatelessWidget {
  const GradeItem({
    Key key,
    @required this.nome,
    @required this.nota,
  }) : super(key: key);

  final String nome;
  final String nota;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      child: Card(
        elevation: 3,
        child: ListTile(
          title: Text(nome),
          subtitle: Text('Nota:' + nota),
          isThreeLine: true,
        ),
      ),
    );
  }
}
