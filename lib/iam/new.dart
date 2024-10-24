import 'package:flutter/material.dart';
import 'package:new_app_setup/iam/news_tile.dart';

class news extends StatelessWidget {
  const news({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return NewsTile();
        });
  }
}
