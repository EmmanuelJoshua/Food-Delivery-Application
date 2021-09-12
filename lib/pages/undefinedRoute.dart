import "package:flutter/material.dart";

class UndefinedRoute extends StatelessWidget {
  final name;
  UndefinedRoute({@required this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            Center(child: Text(" UNDEFINED ROUTE \n $name ROUTE DON'T EXIST")));
  }
}
