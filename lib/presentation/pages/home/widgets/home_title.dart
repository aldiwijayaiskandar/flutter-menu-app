import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
            bottom: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Aldi",
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Text(
                "What Are You Cooking Today?",
                style: Theme.of(context).textTheme.bodyMedium!.merge(
                      const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
