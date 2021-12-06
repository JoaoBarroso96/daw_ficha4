import 'package:flutter/material.dart';

class ImageLagoaFogoRoute extends StatefulWidget {
  @override
  _ImageLagoaFogoRoute createState() => new _ImageLagoaFogoRoute();
}

class _ImageLagoaFogoRoute extends State<ImageLagoaFogoRoute> {
  var title = "Lagoa do Fogo";
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
            image: AssetImage('assets/images/Lagoa_do_Fogo.jpeg'),
            width: MediaQuery.of(context).size.width * 0.7,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        Container(
          margin: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.02,
              0, MediaQuery.of(context).size.width * 0.02, 0),
          child: Text(
              "A Lagoa do Fogo é uma das maiores lagoas dos Açores e a segunda maior da Ilha de São Miguel, e é classificada desde 1974 como reserva natural. O vulcão do Fogo dá forma ao grande maciço vulcânico da Serra de Água de Pau, localizada na zona central da Ilha de São Miguel. Toda esta zona é rodeada por uma densa e exuberante vegetação endémica.",
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
