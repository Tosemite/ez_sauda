abstract interface class Observable<Params, Value> {
  Stream<Value> observe(Params params);
}
