// import 'package:get/get.dart';

// import 'package:news_app/src/models/article.dart';

// class ArtcileNewsController extends GetxController {
//   final artcile = RxList<Article>();

//   final allNewsData = [
//     Article(
//       author: 'Zillur Rahman',
//       title:
//           '''LIVE MARKETS Goodbye Tina, don't slam the door on your way out as Fed era ends - Reuters''',
//       description:
//           '''Analysis of Google search data reveals that online searches for “Sell Ethereum” exploded 972% in the United Kingdom on 6th January 2022, the same day that the cryptocurrency drops by over £300. Q3 2021 hedge fund letters, conferences and more Analysis by Payb…''',
//       url: 'https://bigbdshop.com',
//       urlToImage:
//           'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
//       publishedAt: '2022-01-06 ||17:20:47',
//       content:
//           'Analysis of Google search data reveals that online searches for Sell Ethereum exploded 972% in the United Kingdom on 6th January 2022, the same day that the cryptocurrency drops by over £300.ValueWal… [+1503 chars]',
//     ),
//     Article(
//       author: 'Rokon Sharif',
//       title:
//           '''Zillur MARKETS Goodbye Tina, don't slam the door on your way out as Fed era ends - Reuters''',
//       description:
//           '''Analysis of Google search data reveals that online searches for “Sell Ethereum” exploded 972% in the United Kingdom on 6th January 2022, the same day that the cryptocurrency drops by over £300. Q3 2021 hedge fund letters, conferences and more Analysis by Payb…''',
//       url: 'https://websolutionbd.xyz/',
//       urlToImage:
//           'https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80',
//       publishedAt: '2022-01-06 ||17:20:47',
//       content:
//           'Analysis of Google search data reveals that online searches for Sell Ethereum exploded 972% in the United Kingdom on 6th January 2022, the same day that the cryptocurrency drops by over £300.ValueWal… [+1503 chars]',
//     ),
//     Article(
//       author: 'Tipu Sharif',
//       title:
//           '''LIVE MARKETS Goodbye Tina, don't slam the door on your way out as Fed era ends - Reuters''',
//       description:
//           '''Analysis of Google search data reveals that online searches for “Sell Ethereum” exploded 972% in the United Kingdom on 6th January 2022, the same day that the cryptocurrency drops by over £300. Q3 2021 hedge fund letters, conferences and more Analysis by Payb…''',
//       url:
//           'https://www.valuewalk.com/searches-for-sell-ethereum-explode-972-in-one-day-as-ethereum-drops-over-300/',
//       urlToImage:
//           'https://images.unsplash.com/photo-1522869635100-9f4c5e86aa37?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
//       publishedAt: '2022-01-06 ||17:20:47',
//       content:
//           'Analysis of Google search data reveals that online searches for Sell Ethereum exploded 972% in the United Kingdom on 6th January 2022, the same day that the cryptocurrency drops by over £300.ValueWal… [+1503 chars]',
//     ),
//     Article(
//       author: 'Hasibul Hasan',
//       title:
//           '''LIVE MARKETS Goodbye Tina, don't slam the door on your way out as Fed era ends - Reuters''',
//       description:
//           '''Analysis of Google search data reveals that online searches for “Sell Ethereum” exploded 972% in the United Kingdom on 6th January 2022, the same day that the cryptocurrency drops by over £300. Q3 2021 hedge fund letters, conferences and more Analysis by Payb…''',
//       url:
//           'https://www.valuewalk.com/searches-for-sell-ethereum-explode-972-in-one-day-as-ethereum-drops-over-300/',
//       urlToImage:
//           'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
//       publishedAt: '2022-01-06 ||17:20:47',
//       content:
//           'Analysis of Google search data reveals that online searches for Sell Ethereum exploded 972% in the United Kingdom on 6th January 2022, the same day that the cryptocurrency drops by over £300.ValueWal… [+1503 chars]',
//     ),
//     Article(
//       author: 'Zillur Rahman',
//       title:
//           '''LIVE MARKETS Goodbye Tina, don't slam the door on your way out as Fed era ends - Reuters''',
//       description:
//           '''Analysis of Google search data reveals that online searches for “Sell Ethereum” exploded 972% in the United Kingdom on 6th January 2022, the same day that the cryptocurrency drops by over £300. Q3 2021 hedge fund letters, conferences and more Analysis by Payb…''',
//       url:
//           'https://www.valuewalk.com/searches-for-sell-ethereum-explode-972-in-one-day-as-ethereum-drops-over-300/',
//       urlToImage:
//           'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
//       publishedAt: '2022-01-06 || 17:20:47',
//       content:
//           'Analysis of Google search data reveals that online searches for Sell Ethereum exploded 972% in the United Kingdom on 6th January 2022, the same day that the cryptocurrency drops by over £300.ValueWal… [+1503 chars]',
//     ),
//     Article(
//       author: 'Zillur Rahman',
//       title:
//           '''LIVE MARKETS Goodbye Tina, don't slam the door on your way out as Fed era ends - Reuters''',
//       description:
//           '''Analysis of Google search data reveals that online searches for “Sell Ethereum” exploded 972% in the United Kingdom on 6th January 2022, the same day that the cryptocurrency drops by over £300. Q3 2021 hedge fund letters, conferences and more Analysis by Payb…''',
//       url:
//           'https://www.valuewalk.com/searches-for-sell-ethereum-explode-972-in-one-day-as-ethereum-drops-over-300/',
//       urlToImage:
//           'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
//       publishedAt: '2022-01-06 ||17:20:47',
//       content:
//           'Analysis of Google search data reveals that online searches for Sell Ethereum exploded 972% in the United Kingdom on 6th January 2022, the same day that the cryptocurrency drops by over £300.ValueWal… [+1503 chars]',
//     ),
//     Article(
//       author: 'Zillur Rahman',
//       title:
//           '''LIVE MARKETS Goodbye Tina, don't slam the door on your way out as Fed era ends - Reuters''',
//       description:
//           '''Analysis of Google search data reveals that online searches for “Sell Ethereum” exploded 972% in the United Kingdom on 6th January 2022, the same day that the cryptocurrency drops by over £300. Q3 2021 hedge fund letters, conferences and more Analysis by Payb…''',
//       url:
//           'https://www.valuewalk.com/searches-for-sell-ethereum-explode-972-in-one-day-as-ethereum-drops-over-300/',
//       urlToImage:
//           'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
//       publishedAt: '2022-01-06 ||17:20:47',
//       content:
//           'Analysis of Google search data reveals that online searches for Sell Ethereum exploded 972% in the United Kingdom on 6th January 2022, the same day that the cryptocurrency drops by over £300.ValueWal… [+1503 chars]',
//     ),
//     Article(
//       author: 'Zillur Rahman',
//       title:
//           '''LIVE MARKETS Goodbye Tina, don't slam the door on your way out as Fed era ends - Reuters''',
//       description:
//           '''Analysis of Google search data reveals that online searches for “Sell Ethereum” exploded 972% in the United Kingdom on 6th January 2022, the same day that the cryptocurrency drops by over £300. Q3 2021 hedge fund letters, conferences and more Analysis by Payb…''',
//       url:
//           'https://www.valuewalk.com/searches-for-sell-ethereum-explode-972-in-one-day-as-ethereum-drops-over-300/',
//       urlToImage:
//           'https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80',
//       publishedAt: '2022-01-06 ||17:20:47',
//       content:
//           'Analysis of Google search data reveals that online searches for Sell Ethereum exploded 972% in the United Kingdom on 6th January 2022, the same day that the cryptocurrency drops by over £300.ValueWal… [+1503 chars]',
//     ),
//     Article(
//       author: 'Zillur Rahman',
//       title:
//           '''LIVE MARKETS Goodbye Tina, don't slam the door on your way out as Fed era ends - Reuters''',
//       description:
//           '''Analysis of Google search data reveals that online searches for “Sell Ethereum” exploded 972% in the United Kingdom on 6th January 2022, the same day that the cryptocurrency drops by over £300. Q3 2021 hedge fund letters, conferences and more Analysis by Payb…''',
//       url:
//           'https://www.valuewalk.com/searches-for-sell-ethereum-explode-972-in-one-day-as-ethereum-drops-over-300/',
//       urlToImage:
//           'https://images.unsplash.com/photo-1495563923587-bdc4282494d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80',
//       publishedAt: '2022-01-06 ||17:20:47',
//       content:
//           'Analysis of Google search data reveals that online searches for Sell Ethereum exploded 972% in the United Kingdom on 6th January 2022, the same day that the cryptocurrency drops by over £300.ValueWal… [+1503 chars]',
//     ),
//     Article(
//       author: 'Zillur Rahman',
//       title:
//           '''LIVE MARKETS Goodbye Tina, don't slam the door on your way out as Fed era ends - Reuters''',
//       description:
//           '''Analysis of Google search data reveals that online searches for “Sell Ethereum” exploded 972% in the United Kingdom on 6th January 2022, the same day that the cryptocurrency drops by over £300. Q3 2021 hedge fund letters, conferences and more Analysis by Payb…''',
//       url:
//           'https://www.valuewalk.com/searches-for-sell-ethereum-explode-972-in-one-day-as-ethereum-drops-over-300/',
//       urlToImage:
//           'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
//       publishedAt: '2022-01-06 ||17:20:47',
//       content:
//           'Analysis of Google search data reveals that online searches for Sell Ethereum exploded 972% in the United Kingdom on 6th January 2022, the same day that the cryptocurrency drops by over £300.ValueWal… [+1503 chars]',
//     ),
//     Article(
//       author: 'Zillur Rahman',
//       title:
//           '''LIVE MARKETS Goodbye Tina, don't slam the door on your way out as Fed era ends - Reuters''',
//       description:
//           '''Analysis of Google search data reveals that online searches for “Sell Ethereum” exploded 972% in the United Kingdom on 6th January 2022, the same day that the cryptocurrency drops by over £300. Q3 2021 hedge fund letters, conferences and more Analysis by Payb…''',
//       url:
//           'https://www.valuewalk.com/searches-for-sell-ethereum-explode-972-in-one-day-as-ethereum-drops-over-300/',
//       urlToImage:
//           'https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
//       publishedAt: '2022-01-06 ||17:20:47',
//       content:
//           'Analysis of Google search data reveals that online searches for Sell Ethereum exploded 972% in the United Kingdom on 6th January 2022, the same day that the cryptocurrency drops by over £300.ValueWal… [+1503 chars]',
//     ),
//   ];
// }
