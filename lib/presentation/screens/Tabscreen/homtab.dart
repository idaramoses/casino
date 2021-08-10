import 'package:casino_app/presentation/screens/Tabscreen/all.dart';
import 'package:casino_app/presentation/screens/Tabscreen/top10.dart';
import 'package:flutter/material.dart';


class HomeTab extends StatefulWidget {
  final String title;
  
  HomeTab({
    @required this.title
  });
  
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> with SingleTickerProviderStateMixin{
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 0, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      key: _scaffoldKey,
      // drawer: NavDrawer(),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(widget.title, style: TextStyle(color: Colors.white),),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Theme.of(context).accentColor,
          labelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w800,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
          ),
          tabs: <Widget>[
            Tab(
              text: "Top 10",
            ),
            Tab(
              text: "All",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Top10(),
          All(),
        ],
      ),
    );
  }




}