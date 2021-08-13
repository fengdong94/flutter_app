import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/models/favorites.dart';
import 'package:flutter_app/screens/favorites.dart';
import 'package:flutter_app/screens/counter.dart';
import 'package:flutter_app/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Favorites>(
      create: (context) => Favorites(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          HomePage.routeName: (context) => HomePage(),
          FavoritesPage.routeName: (context) => FavoritesPage(),
          CounterPage.routeName: (context) => CounterPage(title: 'counter'),
        },
        initialRoute: HomePage.routeName,
      ),
    );
  }
}