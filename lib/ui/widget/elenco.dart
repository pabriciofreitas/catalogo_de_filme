import 'package:flutter/material.dart';

class Elenco extends StatelessWidget {
  String image;
  String nome;
  Size size;
  Elenco({
    Key? key,
    required this.image,
    required this.nome,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.34,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CircleAvatar(
          maxRadius: size.height * 0.08,
          backgroundImage: AssetImage(image),
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.02),
          child: Text(
            nome,
            style: Theme.of(context).textTheme.caption?.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                  overflow: TextOverflow.ellipsis,
                ),
          ),
        )
      ]),
    );
  }
}
