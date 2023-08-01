import 'package:get/get.dart';
import 'package:news_app/src/controllers/apiController.dart';
import 'package:news_app/src/controllers/catagoryController.dart';

// ArtcileNewsController obj = new ArtcileNewsController();

mixin class BaseController {
  final catagoryC = Get.put(CatagoryController());
  //final artcileNewsC = Get.put(ArtcileNewsController());
  //final newsC = Get.put(NewsController());
  final apiNewsC = Get.put(ApiController());
}
