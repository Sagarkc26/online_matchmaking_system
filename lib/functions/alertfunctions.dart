import 'package:flutter/material.dart';
import 'package:online_matchmaking_system/pages/show.dart';

actions(BuildContext context, String name, type) {
  showDialog(
    context: context,
    builder: (context) {
      Future.delayed(const Duration(milliseconds: 600), () {
        Navigator.of(context).pop(true);
      });
      return AlertDialog(
        content: buttonWidget(
            type == "Liked"
                ? Icons.favorite
                : type == "Rejected"
                    ? Icons.close
                    : Icons.star,
            type == "Liked"
                ? Colors.green
                : type == "Rejected"
                    ? Colors.red
                    : Colors.blue),
        title: Text(
          "You $type $name",
          style: TextStyle(
              color: type == "Liked"
                  ? Colors.green
                  : type == "Rejected"
                      ? Colors.red
                      : Colors.blue),
        ),
      );
    },
  );
}
