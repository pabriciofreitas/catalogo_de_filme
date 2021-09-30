import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FilmeVerMais extends StatelessWidget {
  String image;
  Function() onTap;
  String nome;
  FilmeVerMais({
    Key? key,
    required this.onTap,
    required this.image,
    required this.nome,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      InkWell(
        onTap: onTap,
        child: CachedNetworkImage(
          //filterQuality: FilterQuality.low,
          height: size.height * 0.40,
          width: size.width * 0.45,
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
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: size.height * 0.019),
        child: Text(
          nome,
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                overflow: TextOverflow.ellipsis,
              ),
        ),
      ),
    ]);
  }
}
/*

imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
          ),


Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Container(height: size.height * 0.019, ),
        Container(
          decoration: BoxDecoration(
            //shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(size.width * 0.05),
          ),
          child: Image(
            fit: BoxFit.cover,
            image: NetworkImage(image),
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
                  overflow: TextOverflow.ellipsis,
                ),
          ),
        )
      ],
    );
*/