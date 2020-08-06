import 'package:flutter/material.dart';

class TapInputField extends StatefulWidget {
	final TextEditingController controller;
	final String hint;
	final int maxlines;

	TapInputField({this.controller, this.hint, this.maxlines});

	@override
  _TapInputFieldState createState() => _TapInputFieldState(controller: controller,hint:hint, maxlines: maxlines);
}

class _TapInputFieldState extends State<TapInputField> {
	TextEditingController controller;
	String hint;
	int maxlines;

	_TapInputFieldState({this.controller, this.hint,this.maxlines});

	@override
  Widget build(BuildContext context) {
		return Material(
			child: Card(
					child: Container(
						child: AbsorbPointer(
							child: TextFormField(
								enabled: false,
								maxLines: maxlines,
								controller: controller,
								decoration: InputDecoration(
									contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 5.0, 20.0),
									border: InputBorder.none,
									hintText: hint,
								),
							),
						),
					),
				),
		);
  }
}
