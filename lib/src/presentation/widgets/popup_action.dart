import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopupAction extends StatelessWidget {
  bool get isFirst => (index == 1);
  bool get isLast => (index == count);

  final int index;
  final int count;
  final String text;
  final IconData iconData;
  final bool? isDanger;
  final VoidCallback? onTap;

  const PopupAction({
    Key? key,
    required this.index,
    required this.count,
    required this.text,
    required this.iconData,
    this.isDanger,
    this.onTap
  }) : super(key: key);

  void onClick(BuildContext context) {
    if (isDanger == true) {
      Navigator.pop(context);
    }
    if(onTap != null) {
      onTap!();
    }

  }

  BorderRadius generateBorderRadius() {
    if (isLast && isFirst) {
      return BorderRadius.circular(10);
    }
    if (isFirst) {
      return const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10));
    }
    if (isLast) {
      return const BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10));
    }

    return BorderRadius.zero;
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: generateBorderRadius(),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => onClick(context),
          child: Ink(
            width: 200,
            height: 50,
            padding: const EdgeInsets.only(left: 15, top: 5, bottom: 5),
            color: Theme.of(context).colorScheme.surface,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    text,
                    style: TextStyle(
                      color: (isDanger ?? false)
                        ? CupertinoColors.destructiveRed
                        : Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
                const Spacer(),
                Expanded(
                  child: Icon(
                    iconData,
                    color: (isDanger ?? false)
                      ? CupertinoColors.destructiveRed
                      : Theme.of(context).colorScheme.onSurface
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
