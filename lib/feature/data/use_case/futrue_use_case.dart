abstract class FutureUseCase<Input, Output>{
  Future<Output> run(Input input);
}