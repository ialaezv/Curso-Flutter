import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
      
    const AvatarScreen({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Avatars'),
          actions: [
            Container(
              margin: const EdgeInsets.only( right: 5 ),
              child: CircleAvatar(
                child: const Text('SL'),
                backgroundColor: Colors.red[900],
              ),
            )
          ],
        ),
        body: const Center(
          child: CircleAvatar(
            maxRadius: 130,
            backgroundImage: NetworkImage('https://ius-sdb.com/wp-content/uploads/2020/01/red-ius-dob-bosco.jpg'),
          ),
        ),
      ) ;
    }
}