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
      elevation: 0,
      leading: onPressed != null
          ? BackButton(
              onPressed: onPressed,
            )
          : null,
      backgroundColor: AppTheme.appColor.surface,
      centerTitle: true,
      title: Text(
        text,
        style: Theme.of(context).textTheme.headline5?.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
