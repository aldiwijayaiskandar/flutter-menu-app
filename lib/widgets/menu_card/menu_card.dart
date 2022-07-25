import 'package:flutter/material.dart';

class Menucard extends StatelessWidget {
  final String thumbnail;
  final String name;

  const Menucard({
    Key? key,
    required this.thumbnail,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(6),
              topRight: Radius.circular(6),
            ),
            child: Image.network(
              thumbnail,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Text(name),
              ],
            ),
          )
        ],
      ),
    );
  }
}
