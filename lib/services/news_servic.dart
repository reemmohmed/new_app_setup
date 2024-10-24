import 'package:dio/dio.dart';
import 'package:new_app_setup/moders/artical_moder.dart';

class NewsServic {
  final Dio dio;
  NewsServic(this.dio);

  Future<List<ArticalModer>> getTopHedlines({required catogry}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=063f7042469d44829b655672b610a8d0&catogry=$catogry'
          // 'https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=063f7042469d44829b655672b610a8d0'
          );
      // 'https://newsapi.org/v2/top-headlines?apiKey=063f7042469d44829b655672b610a8d0&q=sea&searchIn=description');

      Map<String, dynamic> jsonData = response.data;

      // print(jsonData["articles"]);
      List<dynamic> articals = jsonData["articles"];
      // i want to chang the list of map to list of object
      List<ArticalModer> articalList = [];
      for (var artical in articals) {
        ArticalModer articalModer = ArticalModer(
            imageurl: artical["urlToImage"],
            titel: artical["title"],
            subtitel: artical["description"],
            url: artical["url"]);

        articalList.add(articalModer);
      }
      return articalList;
    } catch (e) {
      return [];
    }
  }
}
