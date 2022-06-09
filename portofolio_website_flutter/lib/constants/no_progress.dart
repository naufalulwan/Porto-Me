import 'package:flutter/material.dart';
import 'package:portofolio_website_flutter/constants/constants.dart';

class NoProgress {
  Future<dynamic> noProgress(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          title: const Text(
            "Sorry cuy",
            style: TextStyle(color: primaryColor),
          ),
          content: const Text("Fiturnya belom tersedia"),
        );
      },
    );
  }
}
