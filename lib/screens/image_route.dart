import 'package:flutter/material.dart';

class ImageRoute extends StatefulWidget {
  @override
  _ImageRoute createState() => new _ImageRoute();
}

class _ImageRoute extends State<ImageRoute> {
  var title = "Lagoa das 7 cidades";
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
            image: AssetImage('assets/images/setecidades.jpeg'),
            width: MediaQuery.of(context).size.width * 0.7,
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        Container(
          margin: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.02,
              0, MediaQuery.of(context).size.width * 0.02, 0),
          child: Text(
              "A caldeira foi formada por colapsos sucessivos de pedras e pedregulhos, e tem uma àrea de aproximadamente 4,3 km, profundidade máxima de 29 metros. Constitui-se numa das maiores caldeiras de abatimento do mundo. Os seus bordos apresentam, em sua maior parte, vertentes muito inclinadas e verdes.",
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
