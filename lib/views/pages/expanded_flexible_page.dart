import 'package:flutter/material.dart';

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 100.0,
                color: Colors.red,
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                height: 100.0,
                color: Colors.green,
              ),
            ),
          ],
          ),
          Divider(),
          Row(children: [
            Flexible(
              flex: 1,
              child: Container(
                height: 100.0,
                color: Colors.green,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 100.0,
                color: Colors.red,
              ),
            ),
          ],
          ),
        ],
      ),
    );
  }
}
