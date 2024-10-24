// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:new_app_setup/moders/artical_moder.dart';
// import 'package:new_app_setup/moders/new_moder.dart';
// import 'package:new_app_setup/services/news_servic.dart';

// class NewsTitel extends StatefulWidget {
//   const NewsTitel({
//     super.key,
//   });
//   // final NewModer mnew;
//   // final ArticalModer articalModer;

//   @override
//   State<NewsTitel> createState() => _NewsTitelState();
// }

// class _NewsTitelState extends State<NewsTitel> {
//   List<NewModer> artical = [];
//   @override
//   void initState() {
//     getGeneralNews();
//     super.initState();
//   }

//   Future<void> getGeneralNews() async {
//     artical = (await NewsServic(Dio()).getsea()).cast<NewModer>();
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(15),
//             child: Image.asset(
//               "assets/hool.jpg",
//               // height: 200,
//               // width: double.infinity,
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Text(
//             maxLines: 2,
//             "release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
//             style: TextStyle(
//               color: Colors.black,
//               fontWeight: FontWeight.bold,
//               fontSize: 12,
//               overflow: TextOverflow.ellipsis,
//             ),
//           ),
//           SizedBox(
//             height: 5,
//           ),
//           Text(
//             maxLines: 2,
//             "release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
//             style: TextStyle(
//               color: Colors.black45,
//               fontSize: 9,
//               overflow: TextOverflow.ellipsis,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:new_app_setup/moders/artical_moder.dart';

class NewsTitel extends StatefulWidget {
  const NewsTitel({super.key, required this.articalModer});
  final ArticalModer articalModer;

  @override
  State<NewsTitel> createState() => _NewsTitelState();
}

class _NewsTitelState extends State<NewsTitel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
// this line i want to change image
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              widget.articalModer.imageurl,
              // height: 200,
              // width: double.infinity,
            ),
          ),

          // CachedNetworkImage(
          //   imageUrl:
          //       widget.articalModer.imageurl, // استخدام url الصورة من الموديل
          //   placeholder: (context, url) => const CircularProgressIndicator(),
          //   errorWidget: (context, url, error) => const Icon(Icons.error),
          // ),

          const SizedBox(
            height: 10,
          ),
          Text(
            maxLines: 2,
            widget.articalModer.titel,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 12,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            maxLines: 2,
            widget.articalModer.subtitel,
            style: const TextStyle(
              color: Colors.black45,
              fontSize: 9,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
