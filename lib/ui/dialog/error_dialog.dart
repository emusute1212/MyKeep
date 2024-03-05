import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({
    Key? key,
    required this.title,
    required this.message,
    required this.closeButtonLabel,
    this.closeButtonListener,
  }) : super(key: key);

  final String title;
  final String message;
  final String closeButtonLabel;
  final Function()? closeButtonListener;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: <Widget>[
        GestureDetector(
          child: Text(closeButtonLabel),
          onTap: () {
            Navigator.pop(context);
            closeButtonListener?.call();
          },
        ),
      ],
    );
  }

  void show(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (_) {
        return this;
      },
    );
  }
}
