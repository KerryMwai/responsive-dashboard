import 'package:flutter/material.dart';
import 'package:smartbus/constants/constants.dart';

import '../utils/my_box.dart';
import '../utils/my_tile.dart';

class Desktop extends StatelessWidget {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Desktop"),
      ),
      body: Row(
        children: [
          const MyDrawer(),
          Expanded(
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 4.0,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4),
                        itemBuilder: (context, index) {
                          return const MyBox();
                        }),
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return const MyTile();
                        }))
              ],
            ),
          )
        ],
      ),
    );
  }
}
