

import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0,right: 15.0,top: 10,bottom: 10),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)),
        borderOnForeground: false,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.white,
        color: Colors.white,
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.arrow_drop_down_circle),
              title: const Text('Card title 1'),
              subtitle: Text(
                'Secondary Text',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            const Divider(height: 1),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, bottom: 15, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text("Teklif"),
                      SizedBox(height: 20),
                      Text("0.0"),
                    ],
                  ),
                  SizedBox(width: 60),
                  Column(
                    children: [
                      Text("Teklif"),
                      SizedBox(height: 20),
                      Text("0.0"),
                    ],
                  ),
                  SizedBox(width: 50),
                  Column(
                    children: [
                      Text("Teklif"),
                      SizedBox(height: 20),
                      Text("0.0"),
                    ],
                  )
                ],
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green[200]),
                  onPressed: () {
                    // Perform some action
                  },
                  child: const Text(
                    'Done',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}