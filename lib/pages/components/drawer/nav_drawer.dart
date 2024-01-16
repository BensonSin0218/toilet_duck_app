import "package:toilet_duck/data/theme.dart";

import "package:flutter/material.dart";
import 'package:toilet_duck/pages/components/drawer/drawer_big_duck_btn.dart';
import 'package:toilet_duck/pages/components/drawer/drawer_option.dart';
import 'package:toilet_duck/pages/components/drawer/drawer_subtitle_btn.dart';
import 'package:toilet_duck/pages/components/drawer/drawer_title.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        backgroundColor: AppTheme.creamy,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height, //device full height
                color: AppTheme.lightGreyBlue,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Notification
                      DrawerOption(
                        ratio: 1,
                        iconBtnImage:
                            "assets/images/pages/p1/home/side_menu/notification.png",
                      ),

                      //User
                      DrawerOption(
                        ratio: 1,
                        iconBtnImage:
                            "assets/images/pages/p1/home/side_menu/user.png",
                      ),

                      //Setting
                      DrawerOption(
                        ratio: 1,
                        iconBtnImage:
                            "assets/images/pages/p1/home/side_menu/setting.png",
                      ),

                      Spacer(
                        flex: 6,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  alignment: Alignment.center,
                  fit: StackFit.expand,
                  clipBehavior: Clip.none,
                  children: [
                    //Background duck image
                    DrawerBigDuckBtn(),

                    //Drawer Title and Subtitle buttons
                    ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      children: [
                        DrawerTitle(
                          title: "附近廁所",
                        ),
                        DrawerTitle(
                          title: "Toilet Talk",
                        ),
                        DrawerSubtitleBtn(
                          btnName: "最新 topics",
                          tap: () {},
                        ),
                        DrawerSubtitleBtn(
                          btnName: "熱門 topics",
                          tap: () {},
                        ),
                        DrawerTitle(
                          title: "廁所金榜",
                        ),
                        DrawerSubtitleBtn(
                          btnName: "每週熱門廁所",
                          tap: () {},
                        ),
                        DrawerSubtitleBtn(
                          btnName: "最乾淨廁所",
                          tap: () {},
                        ),
                        DrawerSubtitleBtn(
                          btnName: "最佳服務廁所",
                          tap: () {},
                        ),
                        DrawerSubtitleBtn(
                          btnName: "安心去廁所",
                          tap: () {},
                        ),
                        DrawerTitle(
                          title: "便期追蹤",
                        ),
                        DrawerSubtitleBtn(
                          btnName: "我的便便記錄",
                          tap: () {},
                        ),
                        DrawerSubtitleBtn(
                          btnName: "便便自檢 4 點",
                          tap: () {},
                        ),
                      ],
                    ),

                    //Count Logged In Days
                    Positioned(
                      bottom: 15.0,
                      right: 10.0,
                      child: Text(
                        "已加入 - 天 (尚未註冊)",
                        style: TextStyle(
                          color: AppTheme.brown,
                          fontFamily: AppTheme.zhFontFamily,
                        ),
                      ),
                    ),

                    //Close Drawer button
                    Positioned(
                      top: 10.0,
                      right: 10.0,
                      child: IconButton(
                        icon: Image.asset(
                            "assets/images/pages/p1/home/side_menu/close_duck.png"),
                        iconSize: 40.0,
                        padding: const EdgeInsets.only(top: 8.0),
                        onPressed: () => (Navigator.of(context).pop()),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
