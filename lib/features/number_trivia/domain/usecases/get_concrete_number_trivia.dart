import 'package:dartz/dartz.dart';
import 'package:tdd_clean_architecture/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_clean_architecture/features/number_trivia/domain/repositories/number_trivia_repository.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/use_cases/use_case.dart';
import 'package:equatable/equatable.dart';

class Params extends Equatable {
  final int number;

  Params({required this.number});

  @override
  List<Object?> get props => [this.number];
}

class GetConcreteNumberTrivia extends UseCase<NumberTrivia, Params> {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(Params params) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }

}