/* import 'package:flutter/material.dart';

import '../widgets/custom_list_tile.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Stack(
              children: const [
                CircleAvatar(
                  radius: 24,
                  child: Text('F'),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Icon(
                    Icons.add_circle,
                    color: Colors.yellow,
                  ),
                )
              ],
            ),
            title: const Text('Durumum'),
            subtitle: const Text('Durum güncellemesi eklemek için dokunun'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              'Son Güncellemeler',
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 15,
            itemBuilder: (context, index) => const CustomListTile(subtitle: '40 dakika önce',),
          ),
        ],
      ),
    );
  }
}
 */