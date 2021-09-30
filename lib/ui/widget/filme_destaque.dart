import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FilmeDestaque extends StatelessWidget {
  Function()? onTap;
  Widget? text;
  String url;
  FilmeDestaque({
    Key? key,
    this.onTap,
    this.text,
    required this.url,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      text ?? Container(),
      Padding(
        padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
        child: InkWell(
          onTap: onTap,
          child: CachedNetworkImage(
            //filterQuality: FilterQuality.low,
            height: size.height * 0.6,
            width: size.width * 0.7,
            fit: BoxFit.cover,
            imageUrl: url,
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
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
      Text(
        "titulo do fime",
        style: Theme.of(context)
            .textTheme
            .bodyText1
            ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
      ),
      Padding(
        padding: EdgeInsets.only(
            top: size.height * 0.02, bottom: size.height * 0.01),
        child: Text(
          "Ator 1 - Ator 2 - Ator 3",
          style: Theme.of(context)
              .textTheme
              .bodyText2
              ?.copyWith(color: Theme.of(context).colorScheme.onBackground),
        ),
      ),
    ]);
  }
}
