import 'package:blog_app/pages/DashboradSubs/featured_sub.dart';
import 'package:blog_app/pages/DashboradSubs/latest_sub.dart';
import 'package:blog_app/pages/DashboradSubs/premium_sub.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Theme.of(context).accentColor),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 0,
            actions: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
          drawer: Drawer(),
          bottomNavigationBar: TabBar(
            labelColor: Colors.black,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            unselectedLabelColor: Colors.grey,
            indicatorWeight: 5,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(
                text: 'Latest',
              ),
              Tab(
                text: 'Featured',
              ),
              Tab(
                text: 'Premium',
              ),
            ],
          ),
          body: TabBarView(
            children: [
              DashboardLatest(),
              DashboardFeatured(),
              DashboardPremium()
            ],
          )),
    );
  }
}
