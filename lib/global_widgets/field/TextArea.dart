import 'package:flutter/material.dart';
import 'package:flutterbasestructure/utils/ScreenUtils.dart';
import 'package:flutterbasestructure/utils/TextStyles.dart';

class TextArea extends StatelessWidget {
	final double height;
	final String hint;
	final TextEditingController controller;
	final int maxLength;

	TextArea({
		this.height,
		this.hint,
		this.controller,
		this.maxLength
	});
  @override
  Widget build(BuildContext context) {
	  var containerHeight = ScreenUtils.instance.setHeight(500, context);
	  if (height != null) {
		  containerHeight = height;
	  }

	  return Card(
	    child: Container(
		  height: containerHeight,
		  padding: EdgeInsets.all(16.0),
		  decoration: BoxDecoration(
			  color: Colors.white,
			  borderRadius: BorderRadius.circular(5.0),
			  boxShadow: <BoxShadow>[
				  BoxShadow(
					  color: Color.fromARGB(10, 0, 0, 0),
					  offset: Offset(0.0, 10.0),
					  blurRadius: 30.0,
				  ),
			  ],
		  ),

		  child: TextField(
			  maxLength: maxLength,
			  controller: controller,
			  maxLines: null,
			  decoration: InputDecoration(
					  border: InputBorder.none,
					  hintText: hint,
					  hintStyle: TextStyles.textAreaHint(context)
			  ),
		  ),
	    ),
	  );
  }
}
