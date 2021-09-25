import 'package:flutter/material.dart';

import '../componentes/app_theme.dart';

class MinhaAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final Function()? onPressed;
  const MinhaAppBar({
    Key? key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: onPressed != null
          ? BackButton(
              onPressed: onPressed,
            )
          : null,
      backgroundColor: AppTheme.appColor.surface,
      centerTitle: true,
      title: Text(
        text,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
