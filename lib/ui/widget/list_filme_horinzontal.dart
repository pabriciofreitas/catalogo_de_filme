import 'package:flutter/material.dart';

import '../pages/page.dart';

class ListFilmeHorizontal extends StatelessWidget {
  const ListFilmeHorizontal({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: size.height * 0.45,
        child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
            separatorBuilder: (context, index) => Container(
                  width: size.width * 0.04,
                ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Filme(
                size: size,
                image: "lib/assets/images/image.jpg",
                nome: "Titulo do filme",
              );
            },
            itemCount: 10));
  }
}
