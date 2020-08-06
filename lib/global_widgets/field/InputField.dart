import 'package:flutter/material.dart';
import 'package:flutterbasestructure/utils/colors.dart';
import 'package:flutterbasestructure/global_widgets/card/CustomCard.dart';

class InputField extends StatefulWidget {
	final String text;
	final bool obscureText;
	final bool password;
	final bool email;
	final TextEditingController controller;
	final TextInputAction textInputAction;
	final ValueChanged<String> onFieldSubmitted;
	final FocusNode focusNode;
	final double radius;
	final Color borderColor;
	final double borderWidth;
	final bool enabled;

	InputField({
		this.textInputAction = TextInputAction.done,
		this.onFieldSubmitted,
		this.focusNode,
		this.obscureText = false,
		this.password = false,
		this.text,
		this.email = false,
		this.controller,
		this.radius = 5.0,
		this.borderColor = Colors.transparent,
		this.borderWidth = 0.0,
		this.enabled = true
	});

	@override
	_InputFieldState createState() =>
			_InputFieldState(
				onFieldSubmitted: onFieldSubmitted,
					textInputAction: textInputAction,
					focusNode: focusNode,
					text: text,
					obscureText: obscureText,
					password: password,
					email: email,
					controller: controller,
				borderColor: borderColor,
				borderWidth: borderWidth,
				radius: radius,
				enabled: enabled
			);
}

class _InputFieldState extends State<InputField> {
	String text;
	bool obscureText = false;
	bool password = false;
	bool email = false;
	TextEditingController controller;
	TextInputAction textInputAction;
	ValueChanged<String> onFieldSubmitted;
	FocusNode focusNode;
	double radius;
	Color borderColor;
	double borderWidth;
	bool enabled;

	_InputFieldState({
		this.textInputAction,
		this.onFieldSubmitted,
		this.focusNode,
		this.obscureText,
		this.text,
		this.password,
		this.email,
		this.controller,
		this.radius,
		this.borderColor,
		this.borderWidth,
		this.enabled
	});

	@override
	Widget build(BuildContext context) {
		return Container(
			decoration: BoxDecoration(
				borderRadius: BorderRadius.circular(radius),
			),
				child: Material(
					child: CustomCard(
						padding: 0.0,
						radius: radius,
						borderWidth: borderWidth,
						borderColor: borderColor,
						child: Row(
								children: [
									Expanded(
										child: TextFormField(
											enabled: enabled,
											textInputAction: textInputAction,
											onFieldSubmitted: onFieldSubmitted,
											controller: controller,
											focusNode: focusNode,
											keyboardType: email ? TextInputType.emailAddress : TextInputType.number,
											obscureText: obscureText ? true : false,
											decoration: InputDecoration(
												contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 5.0, 20.0),
												border: InputBorder.none,
												hintText: text,
											),
										),
									),

									Container(
										padding: EdgeInsets.only(right: 0.0),
										child: password ? IconButton(
											icon: Icon(Icons.remove_red_eye),
											color: CustomColors.icon,
											onPressed: _showHide,
										) : null,
									),
								]
						),
					),
				)
		);
	}

	_showHide() {
		setState(() {
			obscureText = !obscureText;
		});
	}
}

