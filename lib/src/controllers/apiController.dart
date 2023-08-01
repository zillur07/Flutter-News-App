import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:news_app/src/configs.dart/appConfigs.dart';
import 'package:news_app/src/models/article.dart';

class ApiController extends GetxController {
  final _dio = Dio();
  final article = RxList<Article>();

  getNewsData() async {
    try {
      final res = await _dio.get(baseUrl);

      final List<Article> articleData = res.data['articles']
          .map((json) => Article.fromJson(json))
          .toList()
          .cast<Article>();

      print('++++++++++++++++++++++++++');
      print(res.data);
      print(res.statusCode);
      print(res.realUri);
      print(res.requestOptions);
      print('++++++++++++++++++++++++++++++++');

      if (res.statusCode == 200) {
        article.addAll(articleData);
        print(articleData);
      }
    } catch (e) {
      print(e);
    }
  }
}
