import 'package:equatable/equatable.dart';

class AppTip extends Equatable{
  final String description;
  final String actionTitle;
  final String imageLink;

  const AppTip({required this.description, required this.actionTitle, required this.imageLink});

  @override
  // TODO: implement props
  List<Object?> get props => [description, actionTitle];
}