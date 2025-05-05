
import 'package:equatable/equatable.dart';

abstract class AnimalDataEvent extends Equatable{
  const AnimalDataEvent();
@override
  List<Object?> get props => [];
}
class FetchAnimalDataEvent extends AnimalDataEvent{
  final String countryName;
  const FetchAnimalDataEvent({required this.countryName});
  @override
  List<Object?> get props => [countryName];
}