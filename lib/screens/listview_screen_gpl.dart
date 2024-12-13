import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {

  const ListViewScreen({super.key});
    void displayDialog(BuildContext context){
    //print('Hola mundo');
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: ( context ) {
        return AlertDialog(
          title: Text('Aviso'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
          content: 
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('El sistema de reserva está deshabilitado en estos momentos.'),
              SizedBox(height: 10,),
              FlutterLogo( size:  100,)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: Text('Cancelar')
            )
          ],
          
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter App'),
          actions: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                child: Text('PB'),
                backgroundColor: Colors.white54,
              ),
            )
          ],
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text('Pistas'),
              leading: Icon(Icons.sports_basketball),
              onTap: () {
                Navigator.pushNamed(context, 'pistas');
              },
            ),
            Divider(),
            ListTile(
              title: Text('Monitores'),
              leading: Icon(Icons.landscape),
              onTap: () {
                Navigator.pushNamed(context, 'monitores');
              },
            ),
            Divider(),
            ListTile(
              title: Text('Reservas'),
              leading: Icon(Icons.access_time_outlined),
              onTap: () => displayDialog(context),
            )
          ],
        ));
  }
}
