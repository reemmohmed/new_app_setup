import 'package:flutter/material.dart';
import 'package:new_app_setup/widget/carogeres_list_view.dart';

import '../widget/NewWidgetBulder.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "News",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              "Cloued",
              style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 19,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      body: const Stack(children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(
                  child: catogeresListView(),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                SliverToBoxAdapter(
                  child: NewWidgetBulder(
                    catogery: "catogry",
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
