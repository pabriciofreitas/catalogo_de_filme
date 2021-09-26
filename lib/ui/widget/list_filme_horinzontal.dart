import 'package:flutter/material.dart';

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
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                          image: AssetImage(
                        "lib/assets/images/image.jpg",
                      )),
                    ),
                    height: size.height * 0.37,
                    width: size.width * 0.4,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.01),
                    child: Text(
                      "Titulo do filme",
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                    ),
                  )
                ],
              );
            },
            itemCount: 10));
  }
}
