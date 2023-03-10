import 'package:flutter/material.dart';
import 'package:petbi/src/core/resources/widgets/text_view.dart';

class MyButton {
  static Widget fill({
    required BuildContext context,
    required void Function()? onPressed,
    required String text,
    Color? backgroundColor,
    BorderRadiusGeometry? borderRadius,
    bool disabled = false,
    bool loading = false,
    Size? size,
    Color? textColor,
  }) {
    return AbsorbPointer(
      absorbing: disabled || loading,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor:
              (disabled ? backgroundColor?.withOpacity(.5) : backgroundColor) ??
                  (disabled
                      ? Theme.of(context).primaryColor.withOpacity(.5)
                      : Theme.of(context).primaryColor),
          side: BorderSide.none,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(4),
          ),
          minimumSize: size ?? const Size(0, 52),
          textStyle: TextStyle(
            color: textColor ?? Colors.white,
            fontWeight: FontWeight.w600,
          ),
          foregroundColor: textColor ?? Colors.white,
        ),
        child: loading
            ? const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.white),
              )
            : FittedBox(
                fit: BoxFit.scaleDown,
                child: TextView(
                  color: textColor ?? Colors.white,
                  fontWeight: FontWeight.w700,
                  text: text,
                  textAlign: TextAlign.center,
                ),
              ),
      ),
    );
  }

  static Widget outlined({
    required BuildContext context,
    required void Function()? onPressed,
    required String text,
    Size? size,
    bool disabled = false,
  }) {
    return AbsorbPointer(
      absorbing: disabled,
      child: OutlinedButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: disabled
                ? Theme.of(context).primaryColor.withOpacity(.5)
                : null,
            side: BorderSide(color: Theme.of(context).primaryColor, width: .5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            minimumSize: size ?? const Size(0, 52),
            textStyle: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w700,
            ),
            foregroundColor: Theme.of(context).primaryColor),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: TextView(
            text: text,
            textAlign: TextAlign.center,
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
