import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final Function onResponder;

  const Resposta({this.texto, this.onResponder});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.black87,
          primary: Colors.grey[300],
          minimumSize: Size(88, 36),
          padding: EdgeInsets.symmetric(horizontal: 16),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
        ),
        onPressed: onResponder,
        child: Text(texto),
      ),
    );
  }
}
