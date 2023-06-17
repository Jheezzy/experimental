import 'package:flutter/material.dart';

var myController = TextEditingController();
var myList = [];

class Shopping extends StatefulWidget {
  const Shopping({super.key});

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  void addItem(String item) {
    setState(() {
      myList.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 100, horizontal: 50),
          child: Text('MY SHOPPING LIST'),
        ),
        ...myList.map((item) => Text(item)),
        Padding(
          padding: const EdgeInsets.all(20),
          child: TextField(
            controller: myController,
            decoration: InputDecoration(
              hintText: 'What do you want to buy ?',
              enabledBorder: OutlineInputBorder(),
              suffixIcon: IconButton(
                onPressed: () => myController.clear(),
                icon: Icon(Icons.close),
              ),
              focusedBorder: OutlineInputBorder(),
            ),
          ),
        ),
        ElevatedButton(
            onPressed: () => addItem(myController.text), child: Text('ADD'))
      ],
    );
  }
}
