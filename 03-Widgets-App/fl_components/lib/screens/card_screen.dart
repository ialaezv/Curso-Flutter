import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 15, vertical: 10 ),
        children: const [
        
          CustomCardType1(),
          SizedBox( height: 10 ),
          CustomCardType2( imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Andorra_la_Vella_3.JPG/1200px-Andorra_la_Vella_3.JPG', titleCard: 'Andorra',),
          SizedBox( height: 10 ),
          CustomCardType2( imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/a/ab/Santa_Coloma_%28esgl%C3%A8sia%29.jpg', titleCard: 'Esglesia Santa Coloma',),
          SizedBox( height: 10 ),
          CustomCardType2( imageUrl: 'https://www.andorrabybus.com/blog/wp-content/uploads/2020/11/romanico-andorra.jpg', titleCard: 'Esglesia Andorra la Vella', ),
          SizedBox( height: 10 ),
          CustomCardType2( imageUrl: 'https://cbbcgroup.com/static/536d1333ee34bd31afb280b7011e2d3c/iglesia-romanica.jpg', titleCard: 'Esglesia Escaldes-engordany', ),
          SizedBox( height: 10 ),
          CustomCardType2( imageUrl: 'https://www.planetware.com/photos-large/AND/andorra-capital-city-andorra-la-vella.jpg',)

        ],
      )
    );
  }
}
