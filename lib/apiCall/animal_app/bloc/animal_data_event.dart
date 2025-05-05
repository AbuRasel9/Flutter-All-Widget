
import 'package:equatable/equatable.dart';

abstract class AnimalDataEvent extends Equatable{
  const AnimalDataEvent();
@override
  List<Object?> get props => [];
}
class FetchAnimalData extends AnimalDataEvent{
  final String countryName;
  const FetchAnimalData({required this.countryName});
  @override
  List<Object?> get props => [countryName];
}