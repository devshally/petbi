import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<T?> petbiShowBottomModel<T>({
  required Widget child,
  required BuildContext context,
  Color? barrierColor,
  EdgeInsetsGeometry? padding,
  double? maxHeight = 650,
  void Function()? onClose,
}) async {
  barrierColor ??= Colors.black.withOpacity(0.75);
  return await showCupertinoModalPopup(
    context: context,
    barrierColor: barrierColor,
    builder: (BuildContext context) => Material(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: Container(
        constraints: maxHeight == null
            ? null
            : BoxConstraints(
                maxHeight: maxHeight,
              ),
        padding: padding ?? const EdgeInsets.all(24),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              child,
            ],
          ),
        ),
      ),
    ),
  ).whenComplete(() => onClose?.call());
}
