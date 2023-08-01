import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/src/components/allNewsComponent.dart';
import 'package:news_app/src/components/catagoryComponent.dart';
import 'package:news_app/src/configs.dart/appColors.dart';
import 'package:news_app/src/configs.dart/appConfigs.dart';
import 'package:news_app/src/controllers/baseController.dart';
import 'package:news_app/src/pages/singleNewsPage.dart';
import 'package:news_app/src/widget.dart/kText.dart';
import 'package:news_app/src/widget.dart/listTile.dart';

// ignore: use_key_in_widget_constructors
class HomePade extends StatelessWidget with BaseController {
  @override
  Widget build(BuildContext context) {
//newsC.getNews();
    apiNewsC.getNewsData();
    return Scaffold(
      // ignore: prefer_const_constructors
      drawer: drawerMenu(),
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: [
            KText(
              text: 'Flutter With',
              fontFamily: medium,
            ),
            const SizedBox(
              width: 3,
            ),
            KText(
              text: 'Zillur07',
              color: blue,
              fontFamily: medium,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: paddingH10,
          child: ListView(
            shrinkWrap: true,
            primary: false,
            children: [
              CatagoryComponent(),
              SizedBox(
                height: 15,
              ),
              AllNewsComponent(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget drawerMenu() {
  var item;
  return SafeArea(
    child: Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          //topRight: Radius.circular(50),
          //topLeft: Radius.circular(100),
          bottomRight: Radius.circular(70),
          // bottomLeft: Radius.circular(150),
        ),
      ),
      child: ListView(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            height: 200,
            width: Get.width,
            color: Colors.white,
            child: Image.asset(
              'images/logo.png',
            ),
          ),
          listTile(
            () {},
            'User Account',
            Icons.account_circle,
            Icons.navigate_next,
          ),
          listTile(
            () => Get.to(SingleNewsPage(
              news: item,
            )),
            'Add News',
            Icons.addchart,
            Icons.navigate_next,
          ),

          Divider(),
          listTile(
            () {},
            'News Category',
            Icons.category_outlined,
            Icons.navigate_next,
          ),

          listTile(
            () {},
            'All News',
            Icons.dashboard_outlined,
            Icons.navigate_next,
          ),
          listTile(
            () => Get.to(SingleNewsPage(
              news: item,
            )),
            'About Us',
            Icons.app_blocking_outlined,
            Icons.navigate_next,
          ),
          listTile(
            () {},
            'Logout',
            Icons.logout_outlined,
            Icons.navigate_next,
          ),

          // listTile(
          //   () {},
          //   'Settings',
          //   Icons.settings,
          //   Icons.navigate_next,
          // ),
          // listTile(
          //   () {},
          //   'Support',
          //   Icons.support_agent_rounded,
          //   Icons.navigate_next,
          // ),
        ],
      ),
    ),
  );
}
