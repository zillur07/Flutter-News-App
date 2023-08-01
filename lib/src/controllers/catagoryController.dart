import 'package:get/get.dart';
import 'package:news_app/src/models/catagory.dart';

class CatagoryController extends GetxController {
  final catagory = RxList<Catagory>();
  final catagoryData = [
    Catagory(
      id: 1,
      catagoryImg:
          'https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80',
      catagoryName: 'Business',
    ),
    Catagory(
      id: 2,
      catagoryName: 'Entertainment',
      catagoryImg:
          'https://images.unsplash.com/photo-1522869635100-9f4c5e86aa37?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
    ),
    Catagory(
      id: 3,
      catagoryName: 'General',
      catagoryImg:
          'https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    ),
    Catagory(
      id: 4,
      catagoryName: 'Health',
      catagoryImg:
          'https://images.unsplash.com/photo-1494390248081-4e521a5940db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1595&q=80',
    ),
    Catagory(
      id: 5,
      catagoryName: 'Science',
      catagoryImg:
          'https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80',
    ),
    Catagory(
      id: 6,
      catagoryName: 'Sports',
      catagoryImg:
          'https://images.unsplash.com/photo-1495563923587-bdc4282494d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80',
    ),
    Catagory(
      id: 7,
      catagoryName: 'Technology',
      catagoryImg:
          'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
    ),
  ];
}
