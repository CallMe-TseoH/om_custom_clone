import 'package:equatable/equatable.dart';

class OrangeService extends Equatable{
  final String name;
  final String logoLink;

  const OrangeService({required this.name, required this.logoLink});

  @override
  List<Object?> get props => [name, logoLink];
}