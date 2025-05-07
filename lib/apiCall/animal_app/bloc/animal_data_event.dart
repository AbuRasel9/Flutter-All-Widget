
import 'package:equatable/equatable.dart';

abstract class AnimalDataEvent extends Equatable{
  const AnimalDataEvent();
@override
  List<Object?> get props => [];
}
class FetchAnimalDataEvent extends AnimalDataEvent{
  final String animalName;
  const FetchAnimalDataEvent({required this.animalName});
  @override
  List<Object?> get props => [animalName];
}
class AnimalListEvent extends AnimalDataEvent{

}