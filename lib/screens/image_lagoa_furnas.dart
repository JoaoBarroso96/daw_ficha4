import 'package:flutter/material.dart';

class ImageLagoaFurnasRoute extends StatefulWidget {
  @override
  _ImageLagoaFurnasRoute createState() => new _ImageLagoaFurnasRoute();
}

class _ImageLagoaFurnasRoute extends State<ImageLagoaFurnasRoute> {
  var title = "Lagoa das Furnas";
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        Center(
          child: Text(title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        Center(
          child: Image(
            image: AssetImage('assets/images/lagoa_furnas.jpeg'),
            width: MediaQuery.of(context).size.width * 0.7,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        Container(
          margin: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.02,
              0, MediaQuery.of(context).size.width * 0.02, 0),
          child: Text(
              "A Lagoa das Furnas é uma lagoa portuguesa, localizada na ilha açoriana de São Miguel, arquipélago dos Açores, na localidade das Furnas, município da Vila da Povoação e está relacionada com a formação vulcânica das Furnas. Encontra-se a uma cota de altitude que ronda os 600 metros.",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.normal)),
          alignment: Alignment.center,
        )
      ],
    );
  }
}
