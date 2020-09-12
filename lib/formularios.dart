import 'package:flutter/material.dart';

class Formulario extends StatelessWidget {
  final String texto;
  final TextInputType tipo;
  final TextEditingController editavel;

  const Formulario(this.texto, this.tipo, this.editavel);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          // Define o tamanho do campo
          width: 250,
          height: 60,
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.all(8.0),
          child: TextFormField(
            controller: editavel,
            keyboardType: tipo,
            style: TextStyle(
                fontSize: 21.0,
                color: Color(0xff06243c),
                //fontWeight: FontWeight.w200,
                fontFamily: "Roboto"),
            decoration: InputDecoration(
              labelText: texto,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffe5ba5b), width: 2.0),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffe5ba5b), width: 2.0)),
            ),
          ),
        )
      ],
    );
  }
}
