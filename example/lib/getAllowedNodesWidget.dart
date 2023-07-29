import 'package:flutter/material.dart';

class GetAllowedNodes extends StatelessWidget {
  const GetAllowedNodes({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Card(
                color: Colors.redAccent,
                margin: const EdgeInsets.all(10),
                child: Container(
                    padding: const EdgeInsets.fromLTRB(12, 4, 12, 4),
                    child: Column(children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      Text(
                        "TODO",
                        style: Theme.of(context).textTheme.displaySmall,
                      )
                    ])))));
  }
}
