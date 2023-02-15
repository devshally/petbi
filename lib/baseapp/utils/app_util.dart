import 'package:flutter/material.dart';
import 'package:petbi/baseapp/utils/utils.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class AppUtil {
  static Widget showInfoCard(BuildContext context,
      {required String text, bool error = false}) {
    return Container(
      decoration: BoxDecoration(
          color: error ? const Color(0xffFFE9E7) : const Color(0xffE5FBF3),
          border: Border.all(
            color: error ? errorColor : successColor,
          ),
          borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.all(10),
      child: Material(
        color: error ? const Color(0xffFFE9E7) : const Color(0xffE5FBF3),
        child: TextView(
          text: text,
          color: const Color(0xff071D2F).withOpacity(.8),
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  static showSnackBar(BuildContext context,
      {required String text, bool error = false}) {
    return showTopSnackBar(
      Overlay.of(context)!,
      Container(
        decoration: BoxDecoration(
            color: error ? const Color(0xffFFE9E7) : const Color(0xffE5FBF3),
            border: Border.all(
              color: error ? errorColor : successColor,
            ),
            borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.all(10),
        child: Material(
          color: error ? const Color(0xffFFE9E7) : const Color(0xffE5FBF3),
          child: TextView(
            text: text,
            color: const Color(0xff071D2F).withOpacity(.8),
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
