// import 'package:dio/dio.dart';
// import 'package:get/get.dart';

// class NewsController extends GetxController {
//   final dio = Dio();

//   final newsList = RxList();

//   getNews() async {
//     try {
//       final response = await dio.get(
//           'https://newsapi.org/v2/everything?q=tesla&from=2022-01-01&sortBy=publishedAt&apiKey=cafbbeeab9d24900b8d44d63f3418771');
//       if (response.statusCode == 200) {
//         //print(response.data);
//         newsList.addAll(response.data['articles']);
//       }
//     } catch (e) {}
//   }
// }
