import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tv_time/view/filmes_view.dart';
import 'package:tv_time/view/series_view.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndexMenu = 0;
  Widget contents = FilmesView();
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndexMenu = index;
      switch (_selectedIndexMenu) {
        case 0:
          contents = FilmesView();
          break;
        case 1:
          contents = SeriesView();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo.png',
              height: 30,
            ),
            Container(
                padding: const EdgeInsets.all(8.0), child: Text('TV Time'))
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: contents,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.local_movies),
            title: Text('Filmes'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            title: Text('Séries'),
          ),
        ],
        currentIndex: _selectedIndexMenu,
        selectedItemColor: Colors.black87,
        onTap: _onItemTapped,
      ),
    );
  }
}
