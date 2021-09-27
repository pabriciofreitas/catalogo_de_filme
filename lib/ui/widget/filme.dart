import 'package:flutter/material.dart';

class Filme extends StatelessWidget {
  String image;
  String nome;
  Filme({
    Key? key,
    required this.image,
    required this.nome,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
                image: AssetImage(
              image,
            )),
          ),
          height: size.height * 0.37,
          width: size.width * 0.4,
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.01),
          child: Text(
            nome,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
        )
      ],
    );
  }
}
