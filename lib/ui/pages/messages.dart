import 'package:flutter/material.dart';

import '../widgets/custom_list_tile.dart';
import 'talk_page.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) =>  CustomListTile(
        subtitle: 'İyi akşamlar',
        trailing: const Text('19:56'),
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const TalkPage()));
        },
      ),
    );
  }
}
