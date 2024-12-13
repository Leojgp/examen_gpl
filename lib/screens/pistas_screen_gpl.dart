import 'package:flutter/material.dart';

class PistasScreen extends StatelessWidget {
  const PistasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pistas'),
        actions: [
          Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://as01.epimg.net/meristation/imagenes/2013/09/17/noticia/1379397600_125748_1532601596_portada_normal.jpg'),
              ))
        ],
      ),
      body: Card(
          child: Column(children: [
        Image(
            image: NetworkImage(
                'https://allforpadel.com/img/cms/pistas/fx2-1.jpg')),
        ListTile(
          title: const Text('Pista de Pádel'),
          subtitle: Text('Lorem Ipsum Lorem Ipsum'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: TextButton(onPressed: () {}, child: Text('Reservar')),
            ),
          ],
        )
      ])),
    );
  }
}
