import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/Screens/cart_screen.dart';
import 'package:shopping_app/Screens/men_fashion_screen.dart';
import 'package:shopping_app/Screens/women.dart';
import 'package:shopping_app/Screens/young_boys.dart';
import 'package:shopping_app/Screens/young_girls.dart';
import 'package:shopping_app/widgets/drawer_view.dart';

class SilverTabView extends StatefulWidget {
  @override
  _SilverTabViewState createState() => _SilverTabViewState();
}

class _SilverTabViewState extends State<SilverTabView>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  var scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerView(),
      body: NestedScrollView(
        controller: scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.blue,
              title: Text('FASHION'),
              actions: <Widget>[
                IconButton(
                  padding: EdgeInsets.only(right: 50.0),
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CartScreen(),
                        ));
                  },
                ),
              ],
              pinned: true,
              floating: true,
              forceElevated: innerBoxIsScrolled,
              bottom: TabBar(
                isScrollable: true,
                tabs: <Tab>[
                  Tab(text: 'MEN'),
                  Tab(text: 'WOMEN'),
                  Tab(icon: Text('YOUNG BOYS')),
                  Tab(text: 'YOUNG GIRLS'),
                ],
                controller: _tabController,
              ),
            ),
          ];
        },
        body: TabBarView(
          children: <Widget>[
            MenFashionScreen(),
            Women(),
            YoungBoys(),
            YoungGirls(),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
