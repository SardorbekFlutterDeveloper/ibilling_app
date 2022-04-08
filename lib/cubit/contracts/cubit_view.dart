import 'package:flutter/material.dart';


class ContractsPage extends StatelessWidget {
  const ContractsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Row(
            children: [
              CircleAvatar(),
              Text("Contracts"),
              
            ],
          ),
        ),
        Expanded(
          child: Container(),
        ),
        Expanded(
          child: Container(),
        ),
      ],
    ));
  }
}
