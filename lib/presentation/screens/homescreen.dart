import 'package:casino_app/presentation/screens/Tabscreen/account.dart';
import 'package:casino_app/presentation/screens/Tabscreen/bonus.dart';
import 'package:casino_app/presentation/screens/Tabscreen/game.dart';
import 'package:casino_app/presentation/screens/Tabscreen/homtab.dart';
import 'package:casino_app/presentation/screens/Tabscreen/promo.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PersistentTabController _controller;

  @override
  void initState() {
    _controller = PersistentTabController(initialIndex: 0);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows:
            true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(5.0),
          colorBehindNavBar: Theme.of(context).primaryColor,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
            NavBarStyle.style6, // Choose the nav bar style with this property.
      ),
    );
  }

  List<Widget> _buildScreens() {
    return [
      HomeTab(title: "Casino"),
      Bonus(),
      promos(),
      account(),
      games(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Icon(Icons.home),
        ),
        title: ("Home"),
        iconSize: 20,
        textStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
        activeColorPrimary: Theme.of(context).accentColor,
        inactiveColorPrimary: Theme.of(context).textTheme.caption.color,
      ),
      PersistentBottomNavBarItem(
        textStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
        icon: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Icon(Icons.tag),
        ),
        title: ("Bonuses"),
        iconSize: 30,
        activeColorPrimary: Theme.of(context).accentColor,
        inactiveColorPrimary: Theme.of(context).textTheme.caption.color,
      ),
      PersistentBottomNavBarItem(
        icon: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Icon(Icons.casino_outlined),
        ),
        iconSize: 20,
        title: ("Promos"),
        textStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
        activeColorPrimary: Theme.of(context).accentColor,
        inactiveColorPrimary: Theme.of(context).textTheme.caption.color,
      ),
      PersistentBottomNavBarItem(
        icon: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Icon(Icons.info),
        ),
        textStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
        iconSize: 20,
        title: ("About Us"),
        activeColorPrimary: Theme.of(context).accentColor,
        inactiveColorPrimary: Theme.of(context).textTheme.caption.color,
      ),
      PersistentBottomNavBarItem(
        icon: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Icon(Icons.games),
        ),
        textStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
        iconSize: 20,
        title: ("Games"),
        activeColorPrimary: Theme.of(context).accentColor,
        inactiveColorPrimary: Theme.of(context).textTheme.caption.color,
      ),
    ];
  }
}
