import 'package:equatable/equatable.dart';
import 'package:om_custom_clone/src/models/preferred_partner.dart';

class ExtendedPartner extends Equatable{
  final String name;
  final String logoLink;
  final String category;
  const ExtendedPartner({required this.name, required this.logoLink, required this.category});

  @override
  List<Object?> get props => [name, logoLink, category];

}