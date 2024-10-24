import 'package:flutter/material.dart';
import 'package:new_app_setup/moders/catogery_model.dart';
import 'package:new_app_setup/views/catogery_veiw.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.catogres});
  final CatogeryModel catogres;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CatogeryVeiw(
                catogery: catogres.catogeryname,
              );
            },
          ),
        );
      },
      child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            height: 100,
            width: 180,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(catogres.image)),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Text(
              catogres.catogeryname,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )),
          )),
    );
  }
}
