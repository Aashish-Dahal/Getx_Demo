import 'package:flutter/material.dart'
    show
        BorderRadius,
        BuildContext,
        Color,
        Colors,
        EdgeInsetsGeometry,
        Icon,
        Icons,
        Key,
        ListTile,
        RoundedRectangleBorder,
        StatelessWidget,
        Text,
        VoidCallback,
        Widget;

class CustomListTile extends StatelessWidget {
  final VoidCallback onTab;
  final Widget? leading;
  final EdgeInsetsGeometry? contentPadding;
  final String? title;
  final Widget? subTitle;
  final Color? tileColor;
  final double? minLeadingWidth;
  final Widget? trailing;
  const CustomListTile(
      {Key? key,
      required this.onTab,
      this.leading,
      this.title,
      this.subTitle,
      this.contentPadding,
      this.minLeadingWidth,
      this.trailing,
      this.tileColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      contentPadding: contentPadding,
      tileColor: Colors.white,
      onTap: onTab,
      minLeadingWidth: minLeadingWidth ?? 15.0,
      leading: leading,
      subtitle: subTitle,
      title: Text(
        title ?? '',
      ),
      trailing: trailing ??
          const Icon(
            Icons.arrow_forward_ios,
            size: 14,
          ),
    );
  }
}
