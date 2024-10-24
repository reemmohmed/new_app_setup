import 'package:flutter/widgets.dart';
import 'package:new_app_setup/moders/catogery_model.dart';
import 'package:new_app_setup/widget/card_widget.dart';

// ignore: camel_case_types
class catogeresListView extends StatelessWidget {
  const catogeresListView({super.key});

  final List<CatogeryModel> catogry = const [
    CatogeryModel(catogeryname: "business", image: "assets/bueness.jpg"),
    CatogeryModel(catogeryname: "science", image: "assets/science.jpg"),
    CatogeryModel(catogeryname: "sea", image: "assets/sea.jpg"),
    CatogeryModel(catogeryname: "hotel", image: "assets/hotel.jpg"),
    CatogeryModel(catogeryname: "sport", image: "assets/sport.jpg"),
    CatogeryModel(catogeryname: "flutter", image: "assets/flutter.jpg"),
    CatogeryModel(catogeryname: "health", image: "assets/healthy.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: catogry.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CardWidget(
              catogres: catogry[index],
            );
          }),
    );
  }
}
