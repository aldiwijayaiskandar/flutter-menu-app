import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Finds Good Food Around You",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
