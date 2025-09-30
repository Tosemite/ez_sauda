// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartState {
  int get totalItemCount;
  double get totalPrice;
  Map<String, CartProduct> get productMap;
  List<CartProduct> get productList;
  Set<String> get selectedDistributorIds;
  BaseState get orderCreateState;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CartStateCopyWith<CartState> get copyWith =>
      _$CartStateCopyWithImpl<CartState>(this as CartState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CartState &&
            (identical(other.totalItemCount, totalItemCount) ||
                other.totalItemCount == totalItemCount) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            const DeepCollectionEquality()
                .equals(other.productMap, productMap) &&
            const DeepCollectionEquality()
                .equals(other.productList, productList) &&
            const DeepCollectionEquality()
                .equals(other.selectedDistributorIds, selectedDistributorIds) &&
            (identical(other.orderCreateState, orderCreateState) ||
                other.orderCreateState == orderCreateState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalItemCount,
      totalPrice,
      const DeepCollectionEquality().hash(productMap),
      const DeepCollectionEquality().hash(productList),
      const DeepCollectionEquality().hash(selectedDistributorIds),
      orderCreateState);

  @override
  String toString() {
    return 'CartState(totalItemCount: $totalItemCount, totalPrice: $totalPrice, productMap: $productMap, productList: $productList, selectedDistributorIds: $selectedDistributorIds, orderCreateState: $orderCreateState)';
  }
}

/// @nodoc
abstract mixin class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) _then) =
      _$CartStateCopyWithImpl;
  @useResult
  $Res call(
      {List<CartProduct> productList,
      int totalItemCount,
      double totalPrice,
      Map<String, CartProduct> productMap,
      Set<String> selectedDistributorIds,
      BaseState orderCreateState});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._self, this._then);

  final CartState _self;
  final $Res Function(CartState) _then;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productList = null,
    Object? totalItemCount = null,
    Object? totalPrice = null,
    Object? productMap = null,
    Object? selectedDistributorIds = null,
    Object? orderCreateState = null,
  }) {
    return _then(CartState(
      productList: null == productList
          ? _self.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>,
      totalItemCount: null == totalItemCount
          ? _self.totalItemCount
          : totalItemCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _self.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      productMap: null == productMap
          ? _self.productMap
          : productMap // ignore: cast_nullable_to_non_nullable
              as Map<String, CartProduct>,
      selectedDistributorIds: null == selectedDistributorIds
          ? _self.selectedDistributorIds
          : selectedDistributorIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      orderCreateState: null == orderCreateState
          ? _self.orderCreateState
          : orderCreateState // ignore: cast_nullable_to_non_nullable
              as BaseState,
    ));
  }
}

/// Adds pattern-matching-related methods to [CartState].
extension CartStatePatterns on CartState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>() {
    final _that = this;
    switch (_that) {
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>() {
    final _that = this;
    switch (_that) {
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>() {
    final _that = this;
    switch (_that) {
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>() {
    final _that = this;
    switch (_that) {
      case _:
        return null;
    }
  }
}

// dart format on
