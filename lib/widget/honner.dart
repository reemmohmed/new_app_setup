// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:new_app_setup/moders/artical_moder.dart';
// import 'package:new_app_setup/services/news_servic.dart';
// import 'package:new_app_setup/widget/news_titel.dart';

// class NewWidget extends StatefulWidget {
//   const NewWidget({
//     super.key,
//   });
//   @override
//   State<NewWidget> createState() => _NewWidgetState();
// }

// class _NewWidgetState extends State<NewWidget> {
//   List<ArticalModer> articals = [];
//   bool datalood = true;

//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articals = (await NewsServic(Dio()).getTopHedlines());
//     datalood = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return datalood
//         ? Center(child: CircularProgressIndicator())
//         : SizedBox(
//             // height: 430,
//             child: ListView.builder(
//             physics: NeverScrollableScrollPhysics(),
//             itemCount: articals.length,
//             shrinkWrap: true,
//             itemBuilder: (context, index) {
//               return NewsTitel(
//                 articalModer: articals[index],
//                 // استخدام articalModer بشكل صحيح
//               );
//             },
//           ));
//   }
// }
