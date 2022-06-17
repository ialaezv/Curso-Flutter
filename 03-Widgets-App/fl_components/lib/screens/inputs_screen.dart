import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    // Utilitzant aquesta variable podem guardar el state de un Widget
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name':   'Pablo',
      'last_name' :   'Garcia Cobo',
      'email'     :   'pablo@gmail.com',
      'password'  :   '123456',
      'role'      :   'admin',

    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs & Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                
                CustomInputFiel( labelText: 'Nombre', hintText: 'Nombre del Usuario', formProperty: 'first_name', formValues: formValues,),
                const SizedBox(height: 30,),
          
                CustomInputFiel( labelText: 'Apellido', hintText: 'Apellido del Usuario', formProperty: 'last_name', formValues: formValues,),
                const SizedBox(height: 30,),
          
                CustomInputFiel( labelText: 'Email', hintText: 'Email del Usuario', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
                const SizedBox(height: 30,),
          
                CustomInputFiel( labelText: 'Password', hintText: 'Password del Usuario', obscureText: true, formProperty: 'password', formValues: formValues,),
                const SizedBox(height: 30,),

                DropdownButtonFormField<String>(
                  value: 'Admin',
                  items: const [
                    DropdownMenuItem( value: 'Admin',   child: Text('Admin')),
                    DropdownMenuItem( value: 'User',    child: Text('User')),
                    DropdownMenuItem( value: 'Random',  child: Text('Random')),
                    DropdownMenuItem( value: 'Guest',   child: Text('Guest')),
                  ], 
                  onChanged: (value) {
                    formValues['role'] = value ?? 'Admin';
                  }
                ),

                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Save')),
                  ),
                  onPressed: () {

                    FocusScope.of(context).requestFocus( FocusNode() );

                    // Validar tots els Inputs del forma més de dispara les validacions internes de cada Input retornan un true o false depenen si ha passat la validació
                     if ( !myFormKey.currentState!.validate() ) {
                      print('Formulario No valido!!!!!');
                      return;
                     }
                     print(formValues);
                  }, 
                  
                  )
          
              ],
            ),
          ),
        ) ,
      )
    );
  }
}
