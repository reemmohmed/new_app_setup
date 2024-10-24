import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            "assets/hool.jpg",
            // height: 200,
            // width: double.infinity,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          maxLines: 2,
          "release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 12,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          maxLines: 2,
          "release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
          style: TextStyle(
            color: Colors.black45,
            fontSize: 9,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
