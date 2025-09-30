// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderState {
  List<ProductOrder>? get orders;
  OrderFilter get filter;
  List<Distributor>? get distributors;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderStateCopyWith<OrderState> get copyWith =>
      _$OrderStateCopyWithImpl<OrderState>(this as OrderState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderState &&
            const DeepCollectionEquality().equals(other.orders, orders) &&
            (identical(other.filter, filter) || other.filter == filter) &&
            const DeepCollectionEquality()
                .equals(other.distributors, distributors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(orders),
      filter,
      const DeepCollectionEquality().hash(distributors));

  @override
  String toString() {
    return 'OrderState(orders: $orders, filter: $filter, distributors: $distributors)';
  }
}

/// @nodoc
abstract mixin class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) _then) =
      _$OrderStateCopyWithImpl;
  @useResult
  $Res call(
      {List<ProductOrder>? orders,
      OrderFilter filter,
      List<Distributor>? distributors});
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res> implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._self, this._then);

  final OrderState _self;
  final $Res Function(OrderState) _then;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = freezed,
    Object? filter = null,
    Object? distributors = freezed,
  }) {
    return _then(OrderState(
      orders: freezed == orders
          ? _self.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<ProductOrder>?,
      filter: null == filter
          ? _self.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as OrderFilter,
      distributors: freezed == distributors
          ? _self.distributors
          : distributors // ignore: cast_nullable_to_non_nullable
              as List<Distributor>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [OrderState].
extension OrderStatePatterns on OrderState {
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

/// @nodoc
mixin _$OrderFilter {
  List<OrderStatus> get statuses;
  OrderFilterDate? get orderFilterDate;
  List<Distributor> get distributors;
  int? get priceFrom;
  int? get priceTo;
  OrderSort get sort;

  /// Create a copy of OrderFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderFilterCopyWith<OrderFilter> get copyWith =>
      _$OrderFilterCopyWithImpl<OrderFilter>(this as OrderFilter, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderFilter &&
            const DeepCollectionEquality().equals(other.statuses, statuses) &&
            (identical(other.orderFilterDate, orderFilterDate) ||
                other.orderFilterDate == orderFilterDate) &&
            const DeepCollectionEquality()
                .equals(other.distributors, distributors) &&
            (identical(other.priceFrom, priceFrom) ||
                other.priceFrom == priceFrom) &&
            (identical(other.priceTo, priceTo) || other.priceTo == priceTo) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statuses),
      orderFilterDate,
      const DeepCollectionEquality().hash(distributors),
      priceFrom,
      priceTo,
      sort);

  @override
  String toString() {
    return 'OrderFilter(statuses: $statuses, orderFilterDate: $orderFilterDate, distributors: $distributors, priceFrom: $priceFrom, priceTo: $priceTo, sort: $sort)';
  }
}

/// @nodoc
abstract mixin class $OrderFilterCopyWith<$Res> {
  factory $OrderFilterCopyWith(
          OrderFilter value, $Res Function(OrderFilter) _then) =
      _$OrderFilterCopyWithImpl;
  @useResult
  $Res call(
      {List<OrderStatus> statuses,
      OrderFilterDate? orderFilterDate,
      List<Distributor> distributors,
      int? priceFrom,
      int? priceTo,
      OrderSort sort});
}

/// @nodoc
class _$OrderFilterCopyWithImpl<$Res> implements $OrderFilterCopyWith<$Res> {
  _$OrderFilterCopyWithImpl(this._self, this._then);

  final OrderFilter _self;
  final $Res Function(OrderFilter) _then;

  /// Create a copy of OrderFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statuses = null,
    Object? orderFilterDate = freezed,
    Object? distributors = null,
    Object? priceFrom = freezed,
    Object? priceTo = freezed,
    Object? sort = null,
  }) {
    return _then(OrderFilter(
      statuses: null == statuses
          ? _self.statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as List<OrderStatus>,
      orderFilterDate: freezed == orderFilterDate
          ? _self.orderFilterDate
          : orderFilterDate // ignore: cast_nullable_to_non_nullable
              as OrderFilterDate?,
      distributors: null == distributors
          ? _self.distributors
          : distributors // ignore: cast_nullable_to_non_nullable
              as List<Distributor>,
      priceFrom: freezed == priceFrom
          ? _self.priceFrom
          : priceFrom // ignore: cast_nullable_to_non_nullable
              as int?,
      priceTo: freezed == priceTo
          ? _self.priceTo
          : priceTo // ignore: cast_nullable_to_non_nullable
              as int?,
      sort: null == sort
          ? _self.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as OrderSort,
    ));
  }
}

/// Adds pattern-matching-related methods to [OrderFilter].
extension OrderFilterPatterns on OrderFilter {
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

/// @nodoc
mixin _$OrderFilterDate {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OrderFilterDate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrderFilterDate()';
  }
}

/// @nodoc
class $OrderFilterDateCopyWith<$Res> {
  $OrderFilterDateCopyWith(
      OrderFilterDate _, $Res Function(OrderFilterDate) __);
}

/// Adds pattern-matching-related methods to [OrderFilterDate].
extension OrderFilterDatePatterns on OrderFilterDate {
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
    TResult Function(OrderFilterDateDay value)? day,
    TResult Function(OrderFilterDateWeek value)? week,
    TResult Function(OrderFilterDateMonth value)? month,
    TResult Function(OrderFilterDateCustom value)? custom,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case OrderFilterDateDay() when day != null:
        return day(_that);
      case OrderFilterDateWeek() when week != null:
        return week(_that);
      case OrderFilterDateMonth() when month != null:
        return month(_that);
      case OrderFilterDateCustom() when custom != null:
        return custom(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(OrderFilterDateDay value) day,
    required TResult Function(OrderFilterDateWeek value) week,
    required TResult Function(OrderFilterDateMonth value) month,
    required TResult Function(OrderFilterDateCustom value) custom,
  }) {
    final _that = this;
    switch (_that) {
      case OrderFilterDateDay():
        return day(_that);
      case OrderFilterDateWeek():
        return week(_that);
      case OrderFilterDateMonth():
        return month(_that);
      case OrderFilterDateCustom():
        return custom(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderFilterDateDay value)? day,
    TResult? Function(OrderFilterDateWeek value)? week,
    TResult? Function(OrderFilterDateMonth value)? month,
    TResult? Function(OrderFilterDateCustom value)? custom,
  }) {
    final _that = this;
    switch (_that) {
      case OrderFilterDateDay() when day != null:
        return day(_that);
      case OrderFilterDateWeek() when week != null:
        return week(_that);
      case OrderFilterDateMonth() when month != null:
        return month(_that);
      case OrderFilterDateCustom() when custom != null:
        return custom(_that);
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
    TResult Function()? day,
    TResult Function()? week,
    TResult Function()? month,
    TResult Function(DateTime startDate, DateTime endDate)? custom,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case OrderFilterDateDay() when day != null:
        return day();
      case OrderFilterDateWeek() when week != null:
        return week();
      case OrderFilterDateMonth() when month != null:
        return month();
      case OrderFilterDateCustom() when custom != null:
        return custom(_that.startDate, _that.endDate);
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
  TResult when<TResult extends Object?>({
    required TResult Function() day,
    required TResult Function() week,
    required TResult Function() month,
    required TResult Function(DateTime startDate, DateTime endDate) custom,
  }) {
    final _that = this;
    switch (_that) {
      case OrderFilterDateDay():
        return day();
      case OrderFilterDateWeek():
        return week();
      case OrderFilterDateMonth():
        return month();
      case OrderFilterDateCustom():
        return custom(_that.startDate, _that.endDate);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? day,
    TResult? Function()? week,
    TResult? Function()? month,
    TResult? Function(DateTime startDate, DateTime endDate)? custom,
  }) {
    final _that = this;
    switch (_that) {
      case OrderFilterDateDay() when day != null:
        return day();
      case OrderFilterDateWeek() when week != null:
        return week();
      case OrderFilterDateMonth() when month != null:
        return month();
      case OrderFilterDateCustom() when custom != null:
        return custom(_that.startDate, _that.endDate);
      case _:
        return null;
    }
  }
}

/// @nodoc

class OrderFilterDateDay implements OrderFilterDate {
  const OrderFilterDateDay();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OrderFilterDateDay);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrderFilterDate.day()';
  }
}

/// @nodoc

class OrderFilterDateWeek implements OrderFilterDate {
  const OrderFilterDateWeek();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OrderFilterDateWeek);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrderFilterDate.week()';
  }
}

/// @nodoc

class OrderFilterDateMonth implements OrderFilterDate {
  const OrderFilterDateMonth();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OrderFilterDateMonth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OrderFilterDate.month()';
  }
}

/// @nodoc

class OrderFilterDateCustom implements OrderFilterDate {
  const OrderFilterDateCustom({required this.startDate, required this.endDate});

  final DateTime startDate;
  final DateTime endDate;

  /// Create a copy of OrderFilterDate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OrderFilterDateCustomCopyWith<OrderFilterDateCustom> get copyWith =>
      _$OrderFilterDateCustomCopyWithImpl<OrderFilterDateCustom>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OrderFilterDateCustom &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate);

  @override
  String toString() {
    return 'OrderFilterDate.custom(startDate: $startDate, endDate: $endDate)';
  }
}

/// @nodoc
abstract mixin class $OrderFilterDateCustomCopyWith<$Res>
    implements $OrderFilterDateCopyWith<$Res> {
  factory $OrderFilterDateCustomCopyWith(OrderFilterDateCustom value,
          $Res Function(OrderFilterDateCustom) _then) =
      _$OrderFilterDateCustomCopyWithImpl;
  @useResult
  $Res call({DateTime startDate, DateTime endDate});
}

/// @nodoc
class _$OrderFilterDateCustomCopyWithImpl<$Res>
    implements $OrderFilterDateCustomCopyWith<$Res> {
  _$OrderFilterDateCustomCopyWithImpl(this._self, this._then);

  final OrderFilterDateCustom _self;
  final $Res Function(OrderFilterDateCustom) _then;

  /// Create a copy of OrderFilterDate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
  }) {
    return _then(OrderFilterDateCustom(
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
