import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FilmeHome extends StatelessWidget {
  String image;
  String nome;
  Function() onTap;
  FilmeHome({
    Key? key,
    required this.image,
    required this.nome,
    required this.onTap,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: onTap,
            child: CachedNetworkImage(
              //filterQuality: FilterQuality.low,
              height: size.height * 0.37,
              width: size.width * 0.4,
              fit: BoxFit.cover,
              imageUrl: image,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,

                    // colorFilter: ColorFilter.mode(Colors.red, BlendMode.colorBurn),
                  ),
                ),
              ),
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.01),
            child: Text(
              nome,
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    overflow: TextOverflow.ellipsis,
                  ),
            ),
          )
        ],
      ),
    );
  }
}

/*
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



 CachedNetworkImage(
        //filterQuality: FilterQuality.low,
        height: size.height * 0.40,
        width: size.width * 0.45,
        fit: BoxFit.cover,
        imageUrl: image,
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
              // colorFilter: ColorFilter.mode(Colors.red, BlendMode.colorBurn),
            ),
          ),
        ),
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),






*/