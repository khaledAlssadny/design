import 'package:equatable/equatable.dart';

class QuantityState extends Equatable {
  final Map<int, int> quantities; // itemId -> quantity

  const QuantityState({this.quantities = const {}});

  QuantityState copyWith({Map<int, int>? quantities}) {
    return QuantityState(
      quantities: quantities ?? this.quantities,
    );
  }

  @override
  List<Object?> get props => [quantities];
}
