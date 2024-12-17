import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout Responsivo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ResponsiveLayout(),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Responsivo'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            // Layout para dispositivos pequenos (celulares)
            return Column(
              children: [
                Container(
                  height: 100,
                  color: Colors.blue,
                  child: Center(child: Text('Celular')),
                ),
                Expanded(child: Center(child: Text('Conteúdo'))),
              ],
            );
          } else {
            // Layout para dispositivos maiores (tablets e desktops)
            return Row(
              children: [
                Container(
                  width: 200,
                  color: Colors.green,
                  child: Center(child: Text('Menu')),
                ),
                Expanded(
                  child: Center(
                    child: Text('Conteúdo'),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
