import 'package:flutter/material.dart';

import '../widgets/custom_list_tile.dart';


class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 40,
      itemBuilder: (context, index) => const CustomListTile(
        subtitle: '36 dakika önce',
        trailing: Icon(Icons.phone),
      ),
    );
  }
}
