import 'package:flutter/material.dart';

class TalkPage extends StatelessWidget {
  const TalkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 90),
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                shrinkWrap: true,
                itemCount: 65,
                itemBuilder: (context, index) => UnconstrainedBox(
                  alignment: index % 2 == 1
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey.shade400),
                      color:
                          index % 2 == 0 ? Colors.white : Colors.green.shade300,
                    ),
                    child: const Text('Selam kanka naber'),
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  color: Colors.black,
                  height: 90,
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40)),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const CircleAvatar(
                        radius: 27,
                        backgroundColor: Colors.green,
                        child: Icon(Icons.send),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.green,
      titleSpacing: 0,
      title: Row(
        children: const [
          CircleAvatar(
            backgroundColor: Colors.red,
            child: Text('F'),
          ),
          SizedBox(width: 10),
          Text('Fevzi Alp Kütük')
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.video_call,
              size: 28,
            )),
        IconButton(onPressed: () {}, icon: const Icon(Icons.phone)),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              size: 28,
            )),
      ],
    );
  }
}
