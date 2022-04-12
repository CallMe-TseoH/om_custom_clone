import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class WillkoRoute{
	final String name;
	final Widget page;
	final Bindings? binding;
	final int? index;

  WillkoRoute({required this.name, required this.page, this.binding, this.index});

}
