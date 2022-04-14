import 'package:equatable/equatable.dart';

class PreferredPartner extends Equatable{
  final String name;
  final String logoLink;

  const PreferredPartner({required this.name, required this.logoLink});

  @override
  // TODO: implement props
  List<Object?> get props => [name, logoLink];
}