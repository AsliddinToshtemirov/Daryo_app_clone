import 'package:flutter/material.dart';

import 'database.dart';

class DetailsPage extends StatelessWidget {
  final News yangilik;
  const DetailsPage({Key? key, required this.yangilik}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            Column(
              children: [
                Card(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.network(yangilik.imageUrl),
                        const SizedBox(
                          height: 15,
                        ),
                      ]),
                ),
                Card(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "To'liq",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(yangilik.full)
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}
