import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTx;
  NewTransaction(this.addTx);
  void submitData(){
    final enteredTitle = titleController.text;
    final entereAmount =double.parse(amountController.text);
    if(enteredTitle.isEmpty||entereAmount <=0){
      return;
    }
 addTx(
   enteredTitle,
   entereAmount
               
               );
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: <
            Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
            controller: titleController,
            onSubmitted:(_)=> submitData(),
          ), //
          TextField(
            decoration: InputDecoration(labelText: 'Amount'),
            controller: amountController,
            keyboardType: TextInputType.number,
            onSubmitted:(_)=> submitData(),

          ),
          FlatButton(
            child: Text('Add Transaction'),
            textColor: Colors.purple,
            onPressed:submitData,
          )
        ]),
      ),
    );
  }
}
