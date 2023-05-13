import 'package:flutter/material.dart';
import 'appbar_widget.dart';
import 'bottom_navbar_widget.dart';
import 'drawer_widget.dart';
import 'wish_list_screen.dart';
import 'shopping_cart_screen.dart';
import 'home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
      theme: ThemeData(
        fontFamily: 'Roboto',
        primaryColor: Colors.white,
        primaryColorDark: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

int currentIndex = 0;

void navigateToScreens(int index) {
  currentIndex = index;
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> viewContainer = [
    const HomeScreen(),
    const WishListScreen(),
    const ShoppingCartScreen(),
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: AppBarWidget(title: 'PYQ')),
        drawer: const DrawerWidget(),
        body: IndexedStack(
          index: currentIndex,
          children: viewContainer,
        ),
        bottomNavigationBar: const BottomNavBarWidget(),
      ),
    );
  }
}
