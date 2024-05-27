import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Table',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Table'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, this.title});
  final String? title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle styTitle = const TextStyle(fontSize: 15.0, color: Colors.white);
  EdgeInsets pdngTitle =
      const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0);
  EdgeInsets padding =
      const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title!),
      ),
      body: Table(
        border: TableBorder.all(),
        columnWidths: const <int, TableColumnWidth>{
          0: FlexColumnWidth(0.25),
          1: FlexColumnWidth(0.25),
          2: FlexColumnWidth(0.25),
          3: FlexColumnWidth(0.30),
        },
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: <TableRow>[
          TableRow(
            decoration: const BoxDecoration(color: Colors.indigo),
            children: <Widget>[
              Container(
                padding: pdngTitle,
                child: Text('Order Id', style: styTitle),
              ),
              Container(
                padding: pdngTitle,
                child: Text('Product', style: styTitle),
              ),
              Container(
                padding: pdngTitle,
                child: Text('Amount', style: styTitle),
              ),
              Container(
                padding: pdngTitle,
                child: Text('Customer', style: styTitle),
              ),
            ],
          ),
          TableRow(
            decoration: const BoxDecoration(color: Colors.white),
            children: <Widget>[
              Container(
                padding: padding,
                child: const Text('1697'),
              ),
              Container(
                padding: padding,
                child: const Text('Gazelle spzl shoes'),
              ),
              Container(
                padding: padding,
                child: const Text('\$3289.0'),
              ),
              Container(
                padding: padding,
                child: const Text('Georgia Bean'),
              ),
            ],
          ),
          TableRow(
            decoration: BoxDecoration(color: Colors.grey.shade300),
            children: <Widget>[
              Container(
                padding: padding,
                child: const Text('8059'),
              ),
              Container(
                padding: padding,
                child: const Text('SGIN Laptop 4GB DDR4 RAM 128GB SSD'),
              ),
              Container(
                padding: padding,
                child: const Text('\$445.0'),
              ),
              Container(
                padding: padding,
                child: const Text('Eve McCann'),
              ),
            ],
          ),
          TableRow(
            decoration: const BoxDecoration(color: Colors.white),
            children: <Widget>[
              Container(
                padding: padding,
                child: const Text('5183'),
              ),
              Container(
                padding: padding,
                child: const Text('VIZIO 24-inch D-Series'),
              ),
              Container(
                padding: padding,
                child: const Text('\$289.0'),
              ),
              Container(
                padding: padding,
                child: const Text('Mariam Skinner'),
              ),
            ],
          ),
          TableRow(
            decoration: BoxDecoration(color: Colors.grey.shade300),
            children: <Widget>[
              Container(
                padding: padding,
                child: const Text('4434'),
              ),
              Container(
                padding: padding,
                child: const Text('Camera lens canon eos 5d'),
              ),
              Container(
                padding: padding,
                child: const Text('\$4434.0'),
              ),
              Container(
                padding: padding,
                child: const Text('Itzel Stuart'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
