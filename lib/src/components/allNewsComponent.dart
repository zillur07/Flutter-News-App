import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:news_app/src/configs.dart/appColors.dart';
import 'package:news_app/src/configs.dart/appConfigs.dart';
import 'package:news_app/src/controllers/baseController.dart';
import 'package:news_app/src/pages/singleNewsPage.dart';
import 'package:news_app/src/widget.dart/kText.dart';

class AllNewsComponent extends StatelessWidget with BaseController {
  @override
  Widget build(BuildContext context) {
    return Obx(
      (() => ListView.builder(
          shrinkWrap: true,
          primary: false,
          itemCount: apiNewsC.article.length,
          //itemCount: newsC.newsList.length,
          physics: BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            final item = apiNewsC.article[index];
            //final item = newsC.newsList[index];
            print(item);
            return GestureDetector(
              onTap: () => Get.to(SingleNewsPage(
                news: item,
              )),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  height: 410,
                  width: Get.width,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Colors.blueGrey.withOpacity(0.20)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blueGrey),
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(8),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(7),
                              topRight: Radius.circular(7)),
                          child: CachedNetworkImage(
                            imageUrl: item.urlToImage.toString(),
                            fit: BoxFit.fill,
                            progressIndicatorBuilder:
                                (context, url, downloadProgress) => Center(
                              child: CircularProgressIndicator(
                                  value: downloadProgress.progress),
                            ),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                        ),
                      ),
                      Padding(
                        padding: paddingH10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            KText(
                              //text: '${item['title']}',
                              text: item.title.toString(),
                              maxLine: 2,
                              fontFamily: medium,
                              fontSize: 16,
                              wordSpacing: 1.50,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              item.author.toString(),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              softWrap: false,
                              style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: regular,
                                  color: black45),
                            ),
                            KText(
                              text: DateFormat('dd-MM-yyyy : kk:mm:a')
                                  .format(item.publishedAt as DateTime),
                              fontSize: 12,
                              fontFamily: regular,
                              color: black,
                            ),
                            Divider(color: Colors.grey),
                            KText(
                              text: item.description.toString(),
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
          })),
    );
  }
}
