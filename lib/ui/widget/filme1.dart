import 'package:flutter/material.dart';

class Filme1 extends StatelessWidget {
  String image;
  String nome;
  Filme1({
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
      children: [
        // Container(height: size.height * 0.019, ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(size.width * 0.05),
            image: DecorationImage(
                image: AssetImage(
              image,
            )),
          ),
          height: size.height * 0.40,
          width: size.width * 0.45,
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.019),
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
/*
 Padding(
          padding: EdgeInsets.only(top: size.height * 0.01),
          child: Text(
            nome,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
        )
*/