import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String? taskTitle;
  final Function(bool?) checkBoxCallback;
  final Function() longPressCallback;

  TaskTile({
    required this.isChecked,
    required this.taskTitle,
    required this.checkBoxCallback,
    required this.longPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        '$taskTitle',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (newValue) {
          checkBoxCallback(newValue);
          print(newValue);
        },
      ),
    );
  }
}
//++++++++++++++++++++++++++++++++++++++++++++++++++++++

// class TaskCheckBox extends StatelessWidget {
//   TaskCheckBox(
//       {required this.checkBoxState, required this.toggleCheckboxState});
//
//   final bool? checkBoxState;
//   final void Function(bool?) toggleCheckboxState;
//
//   @override
//   Widget build(BuildContext context) {
//     return;
//   }
// }
// TaskCheckBox(
// checkBoxState: isChecked, toggleCheckboxState: checkBoxCallback),
// );
