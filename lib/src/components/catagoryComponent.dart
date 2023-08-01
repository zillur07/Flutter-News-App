import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/src/controllers/baseController.dart';

class CatagoryComponent extends StatelessWidget with BaseController {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          primary: false,
          itemCount: catagoryC.catagoryData.length,
          itemBuilder: (BuildContext context, int index) {
            final item = catagoryC.catagoryData[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Stack(
                children: [
                  Container(
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      // border: Border.all(
                      //   color: Colors.blueGrey.withOpacity(.10),
                      // ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: CachedNetworkImage(
                        imageUrl: item.catagoryImg,
                        fit: BoxFit.cover,
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) => Center(
                          child: CircularProgressIndicator(
                              value: downloadProgress.progress),
                        ),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 65,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black.withOpacity(.30),
                    ),
                    child: Text(
                      item.catagoryName,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
