import 'package:flutter/material.dart';

class MyRadio<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final Function(T value)? onChanged;
  const MyRadio(
      {super.key,
      required this.value,
      required this.groupValue,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () {
        onChanged?.call(value);
      },
      child: AnimatedContainer(
          height: 24,
          width: 24,
          duration: const Duration(milliseconds: 500),
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: value == groupValue
                    ? Theme.of(context).primaryColor
                    : const Color(0xffAEB3B8)),
          ),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: value == groupValue
                ? Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).primaryColor,
                    ),
                  )
                : null,
          )),
    );
  }
}
