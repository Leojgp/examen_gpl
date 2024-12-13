import 'package:flutter/material.dart';

class MonitoresScreen extends StatelessWidget {
  const MonitoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
        actions: const [
          Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://as01.epimg.net/meristation/imagenes/2013/09/17/noticia/1379397600_125748_1532601596_portada_normal.jpg'),
              ))
        ],
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              maxRadius: 120,
              backgroundImage: NetworkImage(
                  'https://www.rctb1899.es/sites/default/files/noticia/imatge/2495_1.jpg'),
            ),
            Text('Rafa Nadal'),
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              maxRadius: 120,
              backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/profile_images/1701651173822898176/v_01vBPF_400x400.jpg'),
            ),
            Text('Gisela Pulido')
          ],
        ),
      ),
    );
  }
}
