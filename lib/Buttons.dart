import 'package:flutter/material.dart';

class TxtButton extends StatelessWidget {
  final String label;
  final Icon icon;
  const TxtButton({Key? key, required this.label, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: icon,
      label: Text(label),
      style: TextButton.styleFrom(
          primary: Colors.white,
          backgroundColor: Colors.deepOrange[400],
          elevation: 5,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)))),
    );
  }
}

class ExtendFloat extends StatelessWidget {
  final String label;
  final Icon icon;
  const ExtendFloat({Key? key, required this.label, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
        icon: icon,
        onPressed: () {},
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        label: Text(label),
        elevation: 5,
        splashColor: Colors.black);
  }
}

class ButtonTxt extends StatefulWidget {
  const ButtonTxt({
    Key? key,
  }) : super(key: key);
  String tx = "";
  @override
  State<ButtonTxt> createState() => _ButtonTxtState();
}

class _ButtonTxtState extends State<ButtonTxt> {
  void _muda(String txt) {
    setState(() {
      tx = txt;
    });
  }

  @override
  Widget build(BuildContext context) {
    var icon = Icon(Icons.toggle_off);
    var label = Text("Não Isento");
    return TextButton.icon(
      onPressed: () {
        _muda("aaaa");
      },
      icon: icon,
      label: tx,
      style: TextButton.styleFrom(
          primary: Colors.white,
          backgroundColor: Colors.deepOrange[400],
          elevation: 5,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)))),
    );
  }
}
