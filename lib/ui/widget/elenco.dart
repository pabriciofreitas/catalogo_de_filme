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
        height: size.height * 0.36,
        width: size.width * 0.28,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CircleAvatar(
            maxRadius: size.height * 0.08,
            backgroundImage: NetworkImage(image),
          ),
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.02),
            child: Text(
              nome,
              style: Theme.of(context).textTheme.caption?.copyWith(
                    fontSize: 10,
                    color: Theme.of(context).colorScheme.onBackground,
                    overflow: TextOverflow.ellipsis,
                  ),
            ),
          )
        ]));
  }
}

/*
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

      SizedBox(
      height: size.height * 0.36,
      width: size.width * 0.28,
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
                  fontSize: 10,
                  color: Theme.of(context).colorScheme.onBackground,
                  overflow: TextOverflow.ellipsis,
                ),
          ),
        )
      ]),
    );


SizedBox(
      height: size.height * 0.36,
      width: size.width * 0.28,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CircleAvatar(
          maxRadius: size.height * 0.08,
          child: CachedNetworkImage(
            //filterQuality: FilterQuality.low,
            fit: BoxFit.cover,
            imageUrl: image,
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageProvider,
                  // colorFilter: ColorFilter.mode(Colors.red, BlendMode.colorBurn),
                ),
              ),
            ),
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          //backgroundImage: AssetImage(image),
        ),
        Padding(
          padding: EdgeInsets.only(top: size.height * 0.02),
          child: Text(
            nome,
            style: Theme.of(context).textTheme.caption?.copyWith(
                  fontSize: 10,
                  color: Theme.of(context).colorScheme.onBackground,
                  overflow: TextOverflow.ellipsis,
                ),
          ),
        )
      ]),
    );

*/