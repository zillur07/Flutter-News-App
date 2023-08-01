import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:news_app/src/configs.dart/appColors.dart';
import 'package:news_app/src/configs.dart/appConfigs.dart';
import 'package:news_app/src/controllers/baseController.dart';
// 'package:news_app/src/models/artcile.dart';
import 'package:news_app/src/models/article.dart';
import 'package:news_app/src/widget.dart/kText.dart';
import 'package:news_app/src/widget.dart/webView.dart';

class SingleNewsPage extends StatelessWidget with BaseController {
  final Article news;

  SingleNewsPage({
    required this.news,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: KText(
          text: news.title.toString(),
        ),
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: Icon(Icons.add),
        //   ),
        //   IconButton(
        //     onPressed: () {},
        //     icon: Icon(Icons.edit),
        //   ),
        //   IconButton(
        //     onPressed: () {},
        //     icon: Icon(Icons.delete),
        //   ),
        // ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  //borderRadius: BorderRadius.circular(8),
                  child: CachedNetworkImage(
                    imageUrl: news.urlToImage.toString(),
                    fit: BoxFit.fill,
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) => Center(
                      child: CircularProgressIndicator(
                          value: downloadProgress.progress),
                    ),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    KText(
                      text: news.title.toString(),
                      maxLine: 2,
                      fontFamily: medium,
                      fontSize: 16,
                      wordSpacing: 1.50,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            'images/uzzal.jpg',
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        KText(
                          text: news.author.toString(),
                          fontFamily: medium,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        // Expanded(
                        //   child: SizedBox(
                        //     height: 48,
                        //     child: TextField(
                        //       textAlign: TextAlign.start,
                        //       decoration: InputDecoration(
                        //           focusedBorder: OutlineInputBorder(
                        //               borderSide: BorderSide.none),
                        //           fillColor: Color(0xFFF5F5F5),
                        //           filled: true,
                        //           hintText: 'Comment',
                        //           hintStyle: TextStyle(fontSize: 14)),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.favorite,
                              color: Colors.pink,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            KText(
                              text: 'Favorite',
                              fontFamily: medium,
                              fontSize: 14,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.insert_comment,
                              color: Colors.black54,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            KText(
                              text: 'Comment',
                              fontFamily: medium,
                              fontSize: 14,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.share,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            KText(
                              text: 'Share',
                              fontFamily: medium,
                              fontSize: 14,
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Divider(),
                    Row(
                      children: [
                        KText(
                          text: 'PublishedAt :',
                          color: black45,
                          fontSize: 12,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        KText(
                          text: DateFormat('dd-MM-yyyy : kk:mm:a')
                              .format(news.publishedAt as DateTime),
                          fontFamily: medium,
                          fontSize: 12,
                        ),
                      ],
                    ),
                    Divider(),
                    KText(
                      text: news.content.toString(),
                      fontFamily: medium,
                      color: black45,
                    ),
                    Divider(),
                    KText(
                      text: news.description.toString(),
                      fontFamily: medium,
                      color: black45,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () => Get.to(WebViewExample(
                        url: news.url.toString(),
                      )),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: KText(
                          text: 'Original Content',
                          color: white,
                          fontSize: 16,
                          fontFamily: medium,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          KText(
                            text: 'Recent Post',
                            fontSize: 16,
                            fontFamily: medium,
                          ),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 300,
                      child: ListView.builder(
                          shrinkWrap: true,
                          primary: false,
                          itemCount: apiNewsC.article.length,
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            final item = apiNewsC.article[index];

                            return GestureDetector(
                              onTap: () => Get.to(SingleNewsPage(
                                news: item,
                              )),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  height: 320,
                                  width: 265,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color:
                                            Colors.blueGrey.withOpacity(0.20)),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 300,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.blueGrey),
                                          borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(8),
                                          ),
                                        ),
                                        child: ClipRRect(
                                          //borderRadius: BorderRadius.circular(8),
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(7),
                                              topRight: Radius.circular(7)),
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                item.urlToImage.toString(),
                                            fit: BoxFit.fill,
                                            progressIndicatorBuilder: (context,
                                                    url, downloadProgress) =>
                                                Center(
                                              child: CircularProgressIndicator(
                                                  value: downloadProgress
                                                      .progress),
                                            ),
                                            errorWidget:
                                                (context, url, error) =>
                                                    Icon(Icons.error),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: paddingH10,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            KText(
                                              text: item.content.toString(),
                                              maxLine: 2,
                                              fontFamily: medium,
                                              fontSize: 16,
                                              wordSpacing: 1.50,
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Row(
                                              children: [
                                                KText(
                                                  text: item.author.toString(),
                                                  fontFamily: regular,
                                                  fontSize: 11,
                                                  color: black45,
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                KText(
                                                  text: DateFormat(
                                                          'dd-MM-yyyy : kk:mm:a')
                                                      .format(news.publishedAt
                                                          as DateTime),
                                                  fontSize: 11,
                                                  fontFamily: regular,
                                                  color: black,
                                                ),
                                              ],
                                            ),
                                            Divider(color: Colors.grey),
                                            KText(
                                              text: item.content.toString(),
                                              fontSize: 12,
                                              fontFamily: regular,
                                              color: black45,
                                              maxLine: 2,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
