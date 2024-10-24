import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:new_app_setup/moders/artical_moder.dart';

import '../services/news_servic.dart';
import 'new_widget.dart';

class NewWidgetBulder extends StatefulWidget {
  const NewWidgetBulder({super.key, required this.catogery});
  final String catogery;

  @override
  State<NewWidgetBulder> createState() => _NewWidgetBulderState();
}

class _NewWidgetBulderState extends State<NewWidgetBulder> {
  var futuer;
  @override
  void initState() {
    futuer = NewsServic(Dio()).getTopHedlines(
        catogry: widget.catogery); //i able to request for any wher
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModer>>(
        future: futuer,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewWidget(
                articals: snapshot
                    .data!); //انا متاكد انه فيه بيانات علشان كدي هحط علامة التعجب
          } else if (snapshot.hasError) {
            return Center(child: TextError());
          } else {
            return Center(child: CircleLood());
          }
        });
  }
}

// انا فصلت كل حاجة علي خدة علشان يكون عندي كنترول  عليها
class TextError extends StatelessWidget {
  const TextError({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("oopes there was an error , try a later");
  }
}

class CircleLood extends StatelessWidget {
  const CircleLood({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator();
  }
}
