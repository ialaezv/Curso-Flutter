import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 200;
  bool _checkValue = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
      
            // Depenent de la plataforma s'adapta visualment el Slider amb el .adaptive
            Slider.adaptive(
              min: 70,
              max: 420,
              activeColor: AppTheme.primary,
              // divisions: 10,
              value: _sliderValue , 
              onChanged: _checkValue ? 
              (value) {
                _sliderValue = value;
                setState(() {});
              }
              : null
            ),
            const SizedBox(height: 15,),

            // * Diferenst tipus de Checks amb Flutter
            // Checkbox(
            //   value: _checkValue, 
            //   onChanged: (value) {
            //     _checkValue = value ?? true;
            //     setState(() {}); 
            //   }
            // ),

            // CheckboxListTile(
            //   activeColor: AppTheme.primary,
            //   title: const Text('Habilitar Slider'),
            //   value: _checkValue, 
            //   onChanged: (value) => setState(() { _checkValue = value ?? true; })
            // ),

            SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar Slider'),
              value: _checkValue, 
              onChanged: (value) => setState(() {  _checkValue = value; })
            ),
            
            // * Veure totes les liciencies que utilitza la Applicació
            const AboutListTile(),

            const SizedBox(height: 70,),

            Image(image: const NetworkImage('https://www.sportsfile.com/winshare/w540/Library/SF1141/1840490.jpg'),
              fit: BoxFit.contain,
              width: _sliderValue, 
            ),
            const SizedBox(height: 30,),
            
            Image(image: const NetworkImage('https://www.sportsfile.com/winshare/w540/Library/SF1141/1840515.jpg'),
              fit: BoxFit.contain,
              width: _sliderValue, 
            ),
            const SizedBox(height: 30,),

            Image(image: const NetworkImage('https://cdn01.diariandorra.ad/uploads/imagenes/bajacalidad/2022/06/05/_311_54d4cc12.jpg?9859b9186cd318d02102e40b974c6deb'),
              fit: BoxFit.contain,
              width: _sliderValue, 
            ),
            const SizedBox(height: 30,),

            Image(image: const NetworkImage('https://media.gettyimages.com/photos/albert-rosas-ubach-of-andorra-competes-for-the-ball-with-rhys-of-picture-id1278984980?s=2048x2048'),
              fit: BoxFit.contain,
              width: _sliderValue, 
            ),
            const SizedBox(height: 30,),

          ],
        ),
      )
    );
  }
}