import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'calls.dart';
import 'messages.dart';
import 'status.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  var liste = [
    'Sohbetler',
    'Durum',
    'Aramalar',
  ];

  final user = FirebaseAuth.instance.currentUser!;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(() {
      if (tabController.indexIsChanging) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Whatsapp'),
        centerTitle: false,
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.camera_alt_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
          MaterialButton(
            onPressed: (() {
              FirebaseAuth.instance.signOut();
            }),
            color: Colors.red,
            child: const Text(
              'Sign Out',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          )
        ],
        bottom: TabBar(
          tabs: liste
              .map((e) => Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      e,
                      style: const TextStyle(fontSize: 17),
                    ),
                  ))
              .toList(),
          controller: tabController,
        ),
      ),
      floatingActionButton: tabController.index == 0
          ? FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.purple,
              child: const Icon(Icons.message),
            )
          : Container(),
      body: TabBarView(
        controller: tabController,
        children: const [
          Messages(),
          Status(),
          Calls(),
        ],
      ),
    );
  }
}
