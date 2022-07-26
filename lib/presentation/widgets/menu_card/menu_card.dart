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
      color: Colors.grey,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              thumbnail,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: (MediaQuery.of(context).size.width / 2) - 28,
              padding: const EdgeInsets.all(8),
              child: Text(
                name,
                style: Theme.of(context).textTheme.bodyLarge!.merge(
                      const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                maxLines: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
