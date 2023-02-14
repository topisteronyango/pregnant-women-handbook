import "package:flutter/material.dart";
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {

  Widget build(BuildContext inContext) {
    return MaterialApp(home : Scaffold(
        body : Column(children : [
          Container(height : 100, color: Colors.purple),

          DataTable(sortColumnIndex : 1,
              columns : [
                DataColumn(label : Text("Fist Term")),
                DataColumn(label : Text("Second Term")),
                DataColumn(label: Text("Trird Term"))
              ],
              rows : [

                DataRow(cells : [
                  DataCell(Text("January")),
                  DataCell(Text("May ")),
                  DataCell(Text("July")),

                ]),
                DataRow(cells : [
                  DataCell(Text("February")),
                  DataCell(Text("April")),
                  DataCell(Text("August")),

                ]
                ),
                DataRow(cells : [
                  DataCell(Text('Mars')),
                  DataCell(Text("June")),
                  DataCell(Text("September")),

                ])
              ]
          )
        ])
    ));
  }
}