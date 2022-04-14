import 'package:equatable/equatable.dart';

class OperationService extends Equatable{
  final String name;
  final String illustrationLink;

  const OperationService({required this.name, required this.illustrationLink});

  @override
  // TODO: implement props
  List<Object?> get props => [name, illustrationLink];
}