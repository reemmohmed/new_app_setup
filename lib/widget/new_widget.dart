import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_app_setup/moders/artical_moder.dart';
import 'package:new_app_setup/widget/web_viewPage.dart';
import 'package:new_app_setup/widget/news_titel.dart';

// ignore: must_be_immutable
class NewWidget extends StatelessWidget {
  final List<ArticalModer> articals;
  //انا هستقبل القيمة تحت في instructor

  NewWidget({super.key, required this.articals});

  @override
  Widget build(BuildContext context) {
    return
        // height: 430,
        ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: articals.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            print(articals[index].url);
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return WebViewPage(
                url: articals[index].url,
              );
              // return NewArtocal(article: articals[index]);
            }));
          },
          child: NewsTitel(
            articalModer: articals[index],
            // استخدام articalModer بشكل صحيح
          ),
        );
      },
    );
  }
}
