import 'package:flutter/material.dart';
import 'popular_menu.dart';
import 'search_widget.dart';
import 'top_promo_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          const SearchWidget(),
          const TopPromoSlider(),
          const PopularMenu(),
          SizedBox(
            height: 5.0,
            child: Container(
              color: Color.fromARGB(255, 84, 162, 241),
            ),
          ),
          const PreferredSize(
            preferredSize: Size.fromHeight(40.0),
            child: TabBar(
              labelColor: Colors.black,
              tabs: [
                Tab(
                  text: 'All Exams',
                ),
                Tab(
                  text: 'Academic Exams',
                ),
                Tab(
                  text: 'MST',
                )
              ], // list of tabs
            ),
          ),
          SizedBox(
            height: 5.0,
            child: Container(
              color: Color.fromARGB(255, 84, 180, 221),
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                Container(
                  color: Color.fromARGB(60, 3, 174, 213),
                  child: const Text('All Exams'),
                  //  child: CategoryPage(slug: 'categories/'),
                ),
                Container(
                  color: Color.fromARGB(60, 69, 210, 235),
                  child: const Text('Academic Exams'),
                  // child: BrandHomePage(slug: 'brands/?limit=20&page=1'),
                ),
                Container(
                  color: Color.fromARGB(60, 38, 221, 245),
                  child: const Text('MST'),
                  // child: ShopHomePage(slug: 'custom/shops/?page=1&limit=15',
                  // ),
                ) // class name
              ],
            ),
          ),
        ],
      ),
    );
  }
}
