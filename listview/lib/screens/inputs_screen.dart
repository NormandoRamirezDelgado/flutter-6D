import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              NombreWidget(),
              NombreWidget(),
              NombreWidget(),
              NombreWidget(),
              NombreWidget(),
              NombreWidget(),
              NombreWidget(),
              
            ],
          ),
        ),
      )
    );
  }
}

class NombreWidget extends StatelessWidget {
  const NombreWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        print('Valor: $value');
      },
      validator: (value) {
        if ( value == null ) return 'Este campo es requerido';
        return value.length < 3 ? 'Mínimo de 3 caracteres' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      //Personalizar
      decoration: InputDecoration(
        hintText: 'Nombre de Usuario',
        labelText: 'Nombre',
        helperText: 'Solo Letras',
        //counterText: '3 caracteres'
        prefixIcon: Icon(Icons.verified_user_outlined),
        suffixIcon: Icon(Icons.group_outlined),
        // focusedBorder: OutlineInputBorder(
        //   borderSide: BorderSide(
        //     color: Colors.deepOrange
        //   )
        // ),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(20),
        //     topRight: Radius.circular(20),
        //   )
        // )
      ),
    );
  }
}