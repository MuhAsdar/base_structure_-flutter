import 'package:flutter/material.dart';
import 'package:flutterbasestructure/utils/colors.dart';
import 'package:flutterbasestructure/utils/ScreenUtils.dart';

import 'CustomLoadingIndicator.dart';

class PopupLoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
	    width: ScreenUtils.width(context),
	    height: ScreenUtils.height(context),
	    color: Colors.transparent,
	    child: Center(
		    child: Container(
			    width: ScreenUtils.instance.setWidth(700, context),
			    height: ScreenUtils.instance.setHeight(400, context),
			    decoration: BoxDecoration(color: CustomColors.primary, borderRadius: BorderRadius.circular(10.0)),
			    child: Column(
				    mainAxisAlignment: MainAxisAlignment.center,
				    crossAxisAlignment: CrossAxisAlignment.center,
				    children: <Widget>[
					    Padding(
						    padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
						    child: CustomLoadingIndicator(
							    color: Colors.white,
						    ),
					    ),
					    Padding(
						    padding: EdgeInsets.all(16.0),
						    child: Text(
							    "Memuat harap tunggu...",
							    style: TextStyle(
								    color: Colors.white,
								    fontWeight: FontWeight.bold,
								    fontSize: ScreenUtils.dp16(context),
							    ),
						    ),
					    )
				    ],
			    ),
		    ),
	    ),
    );
  }
}
