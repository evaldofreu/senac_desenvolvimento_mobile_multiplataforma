import 'package:flutter/material.dart';

import 'busca_controlador.dart';

class CampoBuscaWidget extends StatelessWidget {
  final BuscaControlador controlador;
  const CampoBuscaWidget(this.controlador, {super.key});

  @override
  Widget build(BuildContext context) {
    var _controladorCampo = TextEditingController();
    var _NoEmFoco = FocusNode();
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _controladorCampo,
            decoration: InputDecoration(
              fillColor: Colors.blue[200],
              border: _NoEmFoco.hasFocus
                  ? const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: Colors.blue))
                  : InputBorder.none,
              filled: true,
              contentPadding:
                  const EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
              labelText: "Buscar por",
            ),
          ),
        ),
        IconButton(
            onPressed: () {
              controlador.pesquisar(_controladorCampo.text);
            },
            icon: const Icon(Icons.search))
      ],
    );
  }
}
