import 'package:flutter/material.dart';
import 'package:new_app_setup/widget/NewWidgetBulder.dart';
import 'package:new_app_setup/widget/new_widget.dart';

class CatogeryVeiw extends StatelessWidget {
  const CatogeryVeiw({super.key, required this.catogery});
  final String catogery;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: NewWidgetBulder(
              catogery: catogery,
            ),
          )
        ],
      ),
    );
  }
}
