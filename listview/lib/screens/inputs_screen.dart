import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({super.key});
  
  @override
  Widget build(BuildContext context) {

    //Mantener la referencia de cada elemento del Form
    // por medio de el KEY
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name'  : 'Normando',
      'last_name'   : 'Ramírez',
      'email'       : 'nramirezd@cbtis236.edu.mx',
      'password'    : '12345678',
      'role'        : 'Administrador'
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            //Con esto ya tenemos referenciado todo el formulario en myFormKey
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(labelText: 'Nombre', hintText: 'Nombre de Usuario', formProperty: 'first_name', formValues: formValues,),
                SizedBox(height: 20,),
            
                CustomInputField(labelText: 'Apellidos', hintText: 'Apellidos de Usuario', formProperty: 'last_name', formValues: formValues,),
                SizedBox(height: 20,),
            
                CustomInputField(labelText: 'Email', hintText: 'Cooreo del Usuario', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
                SizedBox(height: 20,),
            
                CustomInputField(labelText: 'Contraseña', hintText: 'Contraseña del Usuario', obscureText: true, formProperty: 'password', formValues: formValues,),
                SizedBox(height: 20,),

                DropdownButtonFormField(
                  hint: Text('Role'),
                  items: [
                    DropdownMenuItem(value: 'Administrador', child: Text('Administrador')),
                    DropdownMenuItem(value: 'SuperUser', child: Text('Super Usuario')),
                    DropdownMenuItem(value: 'Developer', child: Text('Developer')),
                    DropdownMenuItem(value: 'Jr. Developer', child: Text('Jr. Developer')),
                  ], 
                  onChanged: (value) {
                    formValues['role'] = value ?? 'Administrador';
                  },
                ),
                SizedBox(height: 20,),
            
                ElevatedButton(
                  onPressed: (){

                    //Remover el Teclado
                    FocusScope.of(context).requestFocus( FocusNode() );

                    if ( !myFormKey.currentState!.validate() ) {
                      print('¡Formulario No Valido!');
                      return ;
                    }
                    print(formValues);

                  }, 
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar', style: TextStyle(color: Colors.white, fontSize: 25 )))
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}

