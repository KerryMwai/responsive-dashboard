import 'package:flutter/material.dart';
import 'package:smartbus/constants/constants.dart';
import 'package:smartbus/utils/my_box.dart';
import 'package:smartbus/utils/my_tile.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobile"),
      ),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 2.0,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 5,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return const MyBox();
                  }),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return const MyTile();
                  }))
        ],
      ),
    );
  }
}
