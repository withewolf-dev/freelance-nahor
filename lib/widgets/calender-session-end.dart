import 'package:flutter/material.dart';

class CalSessionEnd extends StatefulWidget {
  final TextEditingController dateinput;
  const CalSessionEnd({Key? key, required this.dateinput}) : super(key: key);

  @override
  _CalSessionEndState createState() => _CalSessionEndState();
}

class _CalSessionEndState extends State<CalSessionEnd> {
  @override
  void initState() {
    widget.dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        height: 150,
        child: Center(
            child: TextField(
          controller: widget.dateinput, //editing controller of this TextField
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              icon: Icon(Icons.calendar_today), //icon of text field
              labelText: "Session End Date" //label text of field
              ),
          readOnly: true, //set it true, so that user will not able to edit text
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(
                    2000), //DateTime.now() - not to allow to choose before today.
                lastDate: DateTime(2101));

            if (pickedDate != null) {
              String formattedDate =
                  '${pickedDate.day.toString()}-${pickedDate.month.toString()}-${pickedDate.year.toString()}';

              setState(() {
                // print(formattedDate);
                widget.dateinput.text =
                    formattedDate; //set output date to TextField value.
              });
            } else {
              print("Date is not selected");
            }
          },
        )));
  }
}
