import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

void showSnackBar(context, title, message, isSuccess) {
  toastification.show(
    context: context,
    title: Text(title),
    description: Text(message, style: const TextStyle(color: Colors.white)),
    alignment: AlignmentDirectional.topCenter,
    type: isSuccess ? ToastificationType.success : ToastificationType.error,
    style: ToastificationStyle.fillColored,
    autoCloseDuration: const Duration(seconds: 3),
    icon: isSuccess
        ? const Icon(Icons.check_circle_outline_outlined)
        : const Icon(Icons.error_outline),
    backgroundColor: Colors.white,
  );
}
