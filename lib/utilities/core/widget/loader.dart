import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoaderWidget extends StatelessWidget {
  final Widget child;
  final bool loading;
  const LoaderWidget({super.key, required this.child, this.loading = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AbsorbPointer(absorbing: loading, child: child),
        if (loading)
          Center(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).scaffoldBackgroundColor),
              child: const CupertinoActivityIndicator(
                radius: 15,
              ),
            ),
          ),
      ],
    );
  }
}
