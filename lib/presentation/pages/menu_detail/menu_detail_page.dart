import 'package:flutter/material.dart';
import 'package:test_saham_rakyat/presentation/arguments/menu_detail_page_argument.dart';

class MenuDetailPage extends StatefulWidget {
  final MenuDetailPageArgument arguments;

  const MenuDetailPage({
    Key? key,
    required this.arguments,
  }) : super(key: key);

  @override
  State<MenuDetailPage> createState() => _MenuDetailPageState();
}

class _MenuDetailPageState extends State<MenuDetailPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
