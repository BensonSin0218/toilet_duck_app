import "package:toilet_duck/data/theme.dart";

import "package:flutter/material.dart";
import 'package:toilet_duck/pages/components/home_app_bar.dart';
import 'package:toilet_duck/pages/components/drawer/nav_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey, //pass the global key to NavDrawer
      backgroundColor: AppTheme.creamy,
      drawer: NavDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SafeArea(
          child: Container(
            color: AppTheme.creamy,
            width: double.infinity,
            child: ListView(
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              children: [
                HomeAppBar(
                  scaffoldKey: scaffoldKey,
                  barTitle: "便期追蹤",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
