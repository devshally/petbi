import 'package:petbi/baseapp/widgets/text_view.dart';
import 'package:flutter/material.dart';

class MyButton {
  static Widget fill(
      {required BuildContext context,
      Size? size,
      required String text,
      bool disabled = false,
      Color? backgroundColor,
      Color? textColor,
      BorderRadiusGeometry? borderRadius,
      bool loading = false,
      required void Function()? onPressed}) {
    return AbsorbPointer(
      absorbing: disabled || loading,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: (disabled
                      ? backgroundColor?.withOpacity(.5)
                      : backgroundColor) ??
                  (disabled
                      ? Theme.of(context).primaryColor.withOpacity(.5)
                      : Theme.of(context).primaryColor),
              side: BorderSide.none,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(4),
              ),
              minimumSize: size ?? const Size(0, 59),
              textStyle: TextStyle(
                color: textColor ?? Colors.white,
                fontWeight: FontWeight.w700,
              ),
              foregroundColor: textColor ?? Colors.white),
          onPressed: onPressed,
          child: loading
              ? const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.white),
                )
              : FittedBox(
                  fit: BoxFit.scaleDown,
                  child: TextView(
                    text: text,
                    textAlign: TextAlign.center,
                    color: textColor ?? Colors.white,
                    fontWeight: FontWeight.w700,
                    // style: Theme.of(context).textTheme.titleLarge,
                  ),
                )),
    );
  }

  static Widget outlined(
      {required BuildContext context,
      Size? size,
      required String text,
      bool disabled = false,
      required void Function()? onPressed}) {
    return AbsorbPointer(
      absorbing: disabled,
      child: OutlinedButton(
          style: TextButton.styleFrom(
              backgroundColor: disabled
                  ? Theme.of(context).primaryColor.withOpacity(.5)
                  : null,
              side:
                  BorderSide(color: Theme.of(context).primaryColor, width: .5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              minimumSize: size ?? const Size(0, 59),
              textStyle: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w700,
              ),
              foregroundColor: Theme.of(context).primaryColor),
          onPressed: onPressed,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: TextView(
              text: text,
              textAlign: TextAlign.center,
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w700,

              // style: Theme.of(context).textTheme.titleLarge,
            ),
          )),
    );
  }
}
