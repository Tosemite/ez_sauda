// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class Localization {
  Localization();

  static Localization? _current;

  static Localization get current {
    assert(_current != null,
        'No instance of Localization was loaded. Try to initialize the Localization delegate before accessing Localization.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Localization> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Localization();
      Localization._current = instance;

      return instance;
    });
  }

  static Localization of(BuildContext context) {
    final instance = Localization.maybeOf(context);
    assert(instance != null,
        'No instance of Localization present in the widget tree. Did you add Localization.delegate in localizationsDelegates?');
    return instance!;
  }

  static Localization? maybeOf(BuildContext context) {
    return Localizations.of<Localization>(context, Localization);
  }

  /// `Произошла ошибка`
  String get errorOccurred {
    return Intl.message(
      'Произошла ошибка',
      name: 'errorOccurred',
      desc: '',
      args: [],
    );
  }

  /// `Готово`
  String get done {
    return Intl.message(
      'Готово',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Главная`
  String get home {
    return Intl.message(
      'Главная',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Каталог`
  String get catalog {
    return Intl.message(
      'Каталог',
      name: 'catalog',
      desc: '',
      args: [],
    );
  }

  /// `Корзина`
  String get cart {
    return Intl.message(
      'Корзина',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `Избранное`
  String get favorite {
    return Intl.message(
      'Избранное',
      name: 'favorite',
      desc: '',
      args: [],
    );
  }

  /// `Профиль`
  String get profile {
    return Intl.message(
      'Профиль',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Войти`
  String get logIn {
    return Intl.message(
      'Войти',
      name: 'logIn',
      desc: '',
      args: [],
    );
  }

  /// `Войдите в систему, чтобы получить полный доступ к сервису`
  String get logInToAccess {
    return Intl.message(
      'Войдите в систему, чтобы получить полный доступ к сервису',
      name: 'logInToAccess',
      desc: '',
      args: [],
    );
  }

  /// `Логин`
  String get username {
    return Intl.message(
      'Логин',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Пароль`
  String get password {
    return Intl.message(
      'Пароль',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Нажимая кнопку “Войти” Вы принимаете условия Политики конфиденциальности`
  String get byClickingYouAcceptTerms {
    return Intl.message(
      'Нажимая кнопку “Войти” Вы принимаете условия Политики конфиденциальности',
      name: 'byClickingYouAcceptTerms',
      desc: '',
      args: [],
    );
  }

  /// `Поиск`
  String get search {
    return Intl.message(
      'Поиск',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Категории`
  String get categories {
    return Intl.message(
      'Категории',
      name: 'categories',
      desc: '',
      args: [],
    );
  }

  /// `Посмотреть все`
  String get viewAll {
    return Intl.message(
      'Посмотреть все',
      name: 'viewAll',
      desc: '',
      args: [],
    );
  }

  /// `Рекомендации`
  String get recommendations {
    return Intl.message(
      'Рекомендации',
      name: 'recommendations',
      desc: '',
      args: [],
    );
  }

  /// `В корзину`
  String get toCart {
    return Intl.message(
      'В корзину',
      name: 'toCart',
      desc: '',
      args: [],
    );
  }

  /// `({count} отзывов)`
  String ofReviewsCount(Object count) {
    return Intl.message(
      '($count отзывов)',
      name: 'ofReviewsCount',
      desc: '',
      args: [count],
    );
  }

  /// `Бренды`
  String get brands {
    return Intl.message(
      'Бренды',
      name: 'brands',
      desc: '',
      args: [],
    );
  }

  /// `О товаре`
  String get aboutTheProduct {
    return Intl.message(
      'О товаре',
      name: 'aboutTheProduct',
      desc: '',
      args: [],
    );
  }

  /// `Поставщик ({count})`
  String distributorCount(Object count) {
    return Intl.message(
      'Поставщик ($count)',
      name: 'distributorCount',
      desc: '',
      args: [count],
    );
  }

  /// `Доставка`
  String get delivery {
    return Intl.message(
      'Доставка',
      name: 'delivery',
      desc: '',
      args: [],
    );
  }

  /// `Отзывы ({count})`
  String reviewsCount(Object count) {
    return Intl.message(
      'Отзывы ($count)',
      name: 'reviewsCount',
      desc: '',
      args: [count],
    );
  }

  /// `Похожие товары`
  String get similarProducts {
    return Intl.message(
      'Похожие товары',
      name: 'similarProducts',
      desc: '',
      args: [],
    );
  }

  /// `Мин. сумма заказа {amount} ₸`
  String minOrderSumAmount(Object amount) {
    return Intl.message(
      'Мин. сумма заказа $amount ₸',
      name: 'minOrderSumAmount',
      desc: '',
      args: [amount],
    );
  }

  /// `Штрихкод`
  String get barcode {
    return Intl.message(
      'Штрихкод',
      name: 'barcode',
      desc: '',
      args: [],
    );
  }

  /// `Состав`
  String get composition {
    return Intl.message(
      'Состав',
      name: 'composition',
      desc: '',
      args: [],
    );
  }

  /// `Количество предметов в упаковке`
  String get productAmountInPackage {
    return Intl.message(
      'Количество предметов в упаковке',
      name: 'productAmountInPackage',
      desc: '',
      args: [],
    );
  }

  /// `Единица измерения`
  String get measurementUnit {
    return Intl.message(
      'Единица измерения',
      name: 'measurementUnit',
      desc: '',
      args: [],
    );
  }

  /// `Описание товара`
  String get productDescription {
    return Intl.message(
      'Описание товара',
      name: 'productDescription',
      desc: '',
      args: [],
    );
  }

  /// `Вся информация предоставлена продавцом`
  String get allInfoProvidedBySeller {
    return Intl.message(
      'Вся информация предоставлена продавцом',
      name: 'allInfoProvidedBySeller',
      desc: '',
      args: [],
    );
  }

  /// `Показано:`
  String get shown {
    return Intl.message(
      'Показано:',
      name: 'shown',
      desc: '',
      args: [],
    );
  }

  /// `{count} товаров`
  String productsAmount(Object count) {
    return Intl.message(
      '$count товаров',
      name: 'productsAmount',
      desc: '',
      args: [count],
    );
  }

  /// `Акции`
  String get promotions {
    return Intl.message(
      'Акции',
      name: 'promotions',
      desc: '',
      args: [],
    );
  }

  /// `Сначала дешевые`
  String get cheapFirst {
    return Intl.message(
      'Сначала дешевые',
      name: 'cheapFirst',
      desc: '',
      args: [],
    );
  }

  /// `Сначала дорогие`
  String get expensiveFirst {
    return Intl.message(
      'Сначала дорогие',
      name: 'expensiveFirst',
      desc: '',
      args: [],
    );
  }

  /// `Выше рейтинг`
  String get highRating {
    return Intl.message(
      'Выше рейтинг',
      name: 'highRating',
      desc: '',
      args: [],
    );
  }

  /// `Ниже рейтинг`
  String get lowRating {
    return Intl.message(
      'Ниже рейтинг',
      name: 'lowRating',
      desc: '',
      args: [],
    );
  }

  /// `С рейтингом от 4.5`
  String get fromFourPointFiveRating {
    return Intl.message(
      'С рейтингом от 4.5',
      name: 'fromFourPointFiveRating',
      desc: '',
      args: [],
    );
  }

  /// `Цена`
  String get cost {
    return Intl.message(
      'Цена',
      name: 'cost',
      desc: '',
      args: [],
    );
  }

  /// `Применить`
  String get apply {
    return Intl.message(
      'Применить',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Сохранить`
  String get save {
    return Intl.message(
      'Сохранить',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Подробнее`
  String get readMore {
    return Intl.message(
      'Подробнее',
      name: 'readMore',
      desc: '',
      args: [],
    );
  }

  /// `История заказов`
  String get orderHistory {
    return Intl.message(
      'История заказов',
      name: 'orderHistory',
      desc: '',
      args: [],
    );
  }

  /// `Текущие заказы`
  String get currentOrders {
    return Intl.message(
      'Текущие заказы',
      name: 'currentOrders',
      desc: '',
      args: [],
    );
  }

  /// `Список поставщиков`
  String get supplierList {
    return Intl.message(
      'Список поставщиков',
      name: 'supplierList',
      desc: '',
      args: [],
    );
  }

  /// `Ваши отзывы`
  String get yourReviews {
    return Intl.message(
      'Ваши отзывы',
      name: 'yourReviews',
      desc: '',
      args: [],
    );
  }

  /// `Техподдержка EasySauda`
  String get customerSupport {
    return Intl.message(
      'Техподдержка EasySauda',
      name: 'customerSupport',
      desc: '',
      args: [],
    );
  }

  /// `Условия возврата и обмена`
  String get returnAndExchangeConditions {
    return Intl.message(
      'Условия возврата и обмена',
      name: 'returnAndExchangeConditions',
      desc: '',
      args: [],
    );
  }

  /// `Жалобы`
  String get complaints {
    return Intl.message(
      'Жалобы',
      name: 'complaints',
      desc: '',
      args: [],
    );
  }

  /// `Политика конфиденциальности`
  String get privacyPolicy {
    return Intl.message(
      'Политика конфиденциальности',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Тут Вы можете повторить, сделать возврат, обменять, отменить заказ`
  String get orderHistoryDescription {
    return Intl.message(
      'Тут Вы можете повторить, сделать возврат, обменять, отменить заказ',
      name: 'orderHistoryDescription',
      desc: '',
      args: [],
    );
  }

  /// `Проверьте статус заказа`
  String get currentOrdersDescription {
    return Intl.message(
      'Проверьте статус заказа',
      name: 'currentOrdersDescription',
      desc: '',
      args: [],
    );
  }

  /// `С которыми Вы взаимодействовали`
  String get supplierListDescription {
    return Intl.message(
      'С которыми Вы взаимодействовали',
      name: 'supplierListDescription',
      desc: '',
      args: [],
    );
  }

  /// `Поделитесь мнением о товаре`
  String get yourReviewsDescription {
    return Intl.message(
      'Поделитесь мнением о товаре',
      name: 'yourReviewsDescription',
      desc: '',
      args: [],
    );
  }

  /// `Возможность изменить/сбросить пароль`
  String get passwordDescription {
    return Intl.message(
      'Возможность изменить/сбросить пароль',
      name: 'passwordDescription',
      desc: '',
      args: [],
    );
  }

  /// `Поможем Вам по любым вопросам`
  String get customerSupportDescription {
    return Intl.message(
      'Поможем Вам по любым вопросам',
      name: 'customerSupportDescription',
      desc: '',
      args: [],
    );
  }

  /// `Выйти`
  String get logout {
    return Intl.message(
      'Выйти',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Вы уверены, что хотите выйти из аккаунта?`
  String get confirmLogout {
    return Intl.message(
      'Вы уверены, что хотите выйти из аккаунта?',
      name: 'confirmLogout',
      desc: '',
      args: [],
    );
  }

  /// `Ваши данные будут сохранены после завершения сеанса`
  String get yourDataWillBeSavedAfterLogout {
    return Intl.message(
      'Ваши данные будут сохранены после завершения сеанса',
      name: 'yourDataWillBeSavedAfterLogout',
      desc: '',
      args: [],
    );
  }

  /// `Отмена`
  String get cancel {
    return Intl.message(
      'Отмена',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Да, выйти`
  String get yesLogout {
    return Intl.message(
      'Да, выйти',
      name: 'yesLogout',
      desc: '',
      args: [],
    );
  }

  /// `Вы ввели неверные имя пользователя и/или пароль `
  String get wrongLoginOrPassword {
    return Intl.message(
      'Вы ввели неверные имя пользователя и/или пароль ',
      name: 'wrongLoginOrPassword',
      desc: '',
      args: [],
    );
  }

  /// `Мин. сумма заказа {cost} ₸`
  String minOrderSum(Object cost) {
    return Intl.message(
      'Мин. сумма заказа $cost ₸',
      name: 'minOrderSum',
      desc: '',
      args: [cost],
    );
  }

  /// `Минимальная сумма заказа: {cost} ₸`
  String minimalOrderSum(Object cost) {
    return Intl.message(
      'Минимальная сумма заказа: $cost ₸',
      name: 'minimalOrderSum',
      desc: '',
      args: [cost],
    );
  }

  /// `Выбрать`
  String get select {
    return Intl.message(
      'Выбрать',
      name: 'select',
      desc: '',
      args: [],
    );
  }

  /// `Выбрать все`
  String get selectAll {
    return Intl.message(
      'Выбрать все',
      name: 'selectAll',
      desc: '',
      args: [],
    );
  }

  /// `Перейти к оформлению`
  String get proceedToCheckout {
    return Intl.message(
      'Перейти к оформлению',
      name: 'proceedToCheckout',
      desc: '',
      args: [],
    );
  }

  /// `{num} ед.`
  String cartUnits(Object num) {
    return Intl.message(
      '$num ед.',
      name: 'cartUnits',
      desc: '',
      args: [num],
    );
  }

  /// `Оформление заказа`
  String get placingAnOrder {
    return Intl.message(
      'Оформление заказа',
      name: 'placingAnOrder',
      desc: '',
      args: [],
    );
  }

  /// `Доставка: {date}`
  String deliveryDate(Object date) {
    return Intl.message(
      'Доставка: $date',
      name: 'deliveryDate',
      desc: '',
      args: [date],
    );
  }

  /// `Комментарии к заказу`
  String get commentsOnTheOrder {
    return Intl.message(
      'Комментарии к заказу',
      name: 'commentsOnTheOrder',
      desc: '',
      args: [],
    );
  }

  /// `Введите комментарии`
  String get enterComment {
    return Intl.message(
      'Введите комментарии',
      name: 'enterComment',
      desc: '',
      args: [],
    );
  }

  /// `Подтверждение`
  String get confirm {
    return Intl.message(
      'Подтверждение',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Изменить дату доставки`
  String get changeDeliveryDate {
    return Intl.message(
      'Изменить дату доставки',
      name: 'changeDeliveryDate',
      desc: '',
      args: [],
    );
  }

  /// `Ваш заказ`
  String get yourOrder {
    return Intl.message(
      'Ваш заказ',
      name: 'yourOrder',
      desc: '',
      args: [],
    );
  }

  /// `{num} товара`
  String numItems(Object num) {
    return Intl.message(
      '$num товара',
      name: 'numItems',
      desc: '',
      args: [num],
    );
  }

  /// `Товары ({num})`
  String itemsNum(Object num) {
    return Intl.message(
      'Товары ($num)',
      name: 'itemsNum',
      desc: '',
      args: [num],
    );
  }

  /// `Итого`
  String get total {
    return Intl.message(
      'Итого',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Оформить заказ`
  String get placeAnOrder {
    return Intl.message(
      'Оформить заказ',
      name: 'placeAnOrder',
      desc: '',
      args: [],
    );
  }

  /// `Нажимая на кнопку, вы соглашаетесь с Условиями обработки персональных данных, а также с Условиями продажи`
  String get privacyPolicySubtitle {
    return Intl.message(
      'Нажимая на кнопку, вы соглашаетесь с Условиями обработки персональных данных, а также с Условиями продажи',
      name: 'privacyPolicySubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Спасибо за заказ!`
  String get thankYouForOrder {
    return Intl.message(
      'Спасибо за заказ!',
      name: 'thankYouForOrder',
      desc: '',
      args: [],
    );
  }

  /// `Ваш заказ успешно оформлен\nи уже передан поставщику.`
  String get orderSuccess {
    return Intl.message(
      'Ваш заказ успешно оформлен\nи уже передан поставщику.',
      name: 'orderSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Вернуться к покупкам`
  String get returnToShopping {
    return Intl.message(
      'Вернуться к покупкам',
      name: 'returnToShopping',
      desc: '',
      args: [],
    );
  }

  /// `Мои заказы`
  String get myOrders {
    return Intl.message(
      'Мои заказы',
      name: 'myOrders',
      desc: '',
      args: [],
    );
  }

  /// `Заказ №{number}`
  String orderNumber(Object number) {
    return Intl.message(
      'Заказ №$number',
      name: 'orderNumber',
      desc: '',
      args: [number],
    );
  }

  /// `Сумма заказа`
  String get orderSum {
    return Intl.message(
      'Сумма заказа',
      name: 'orderSum',
      desc: '',
      args: [],
    );
  }

  /// `Количество`
  String get amount {
    return Intl.message(
      'Количество',
      name: 'amount',
      desc: '',
      args: [],
    );
  }

  /// `{num} товаров`
  String itemsAmount(Object num) {
    return Intl.message(
      '$num товаров',
      name: 'itemsAmount',
      desc: '',
      args: [num],
    );
  }

  /// `Планируемая доставка`
  String get plannedDelivery {
    return Intl.message(
      'Планируемая доставка',
      name: 'plannedDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Отвественный`
  String get responsible {
    return Intl.message(
      'Отвественный',
      name: 'responsible',
      desc: '',
      args: [],
    );
  }

  /// `Статус`
  String get status {
    return Intl.message(
      'Статус',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `На рассмотрении`
  String get underReview {
    return Intl.message(
      'На рассмотрении',
      name: 'underReview',
      desc: '',
      args: [],
    );
  }

  /// `Подтвержден`
  String get confirmed {
    return Intl.message(
      'Подтвержден',
      name: 'confirmed',
      desc: '',
      args: [],
    );
  }

  /// `В доставке`
  String get inDelivery {
    return Intl.message(
      'В доставке',
      name: 'inDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Доставлен`
  String get delivered {
    return Intl.message(
      'Доставлен',
      name: 'delivered',
      desc: '',
      args: [],
    );
  }

  /// `Отменен`
  String get cancelled {
    return Intl.message(
      'Отменен',
      name: 'cancelled',
      desc: '',
      args: [],
    );
  }

  /// `Возвращен`
  String get returned {
    return Intl.message(
      'Возвращен',
      name: 'returned',
      desc: '',
      args: [],
    );
  }

  /// `Дата`
  String get date {
    return Intl.message(
      'Дата',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Сегодня`
  String get today {
    return Intl.message(
      'Сегодня',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `Неделя`
  String get week {
    return Intl.message(
      'Неделя',
      name: 'week',
      desc: '',
      args: [],
    );
  }

  /// `Месяц`
  String get month {
    return Intl.message(
      'Месяц',
      name: 'month',
      desc: '',
      args: [],
    );
  }

  /// `Сумма`
  String get sum {
    return Intl.message(
      'Сумма',
      name: 'sum',
      desc: '',
      args: [],
    );
  }

  /// `Сортировать`
  String get sort {
    return Intl.message(
      'Сортировать',
      name: 'sort',
      desc: '',
      args: [],
    );
  }

  /// `По дате заказа`
  String get byOrderDate {
    return Intl.message(
      'По дате заказа',
      name: 'byOrderDate',
      desc: '',
      args: [],
    );
  }

  /// `По сумме заказа`
  String get byOrderSum {
    return Intl.message(
      'По сумме заказа',
      name: 'byOrderSum',
      desc: '',
      args: [],
    );
  }

  /// `У вас пока нет заказов`
  String get youHaveNoOrders {
    return Intl.message(
      'У вас пока нет заказов',
      name: 'youHaveNoOrders',
      desc: '',
      args: [],
    );
  }

  /// `Перейти в каталог`
  String get goToCatalog {
    return Intl.message(
      'Перейти в каталог',
      name: 'goToCatalog',
      desc: '',
      args: [],
    );
  }

  /// `Заказы не найдены`
  String get ordersNotFound {
    return Intl.message(
      'Заказы не найдены',
      name: 'ordersNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Попробуйте изменить параметры поиска`
  String get tryToChangeSearchParameters {
    return Intl.message(
      'Попробуйте изменить параметры поиска',
      name: 'tryToChangeSearchParameters',
      desc: '',
      args: [],
    );
  }

  /// `Фильтр`
  String get filter {
    return Intl.message(
      'Фильтр',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `Поставщики`
  String get distributors {
    return Intl.message(
      'Поставщики',
      name: 'distributors',
      desc: '',
      args: [],
    );
  }

  /// `Поставщик`
  String get distributor {
    return Intl.message(
      'Поставщик',
      name: 'distributor',
      desc: '',
      args: [],
    );
  }

  /// `Стоимость доставки`
  String get deliveryCost {
    return Intl.message(
      'Стоимость доставки',
      name: 'deliveryCost',
      desc: '',
      args: [],
    );
  }

  /// `Бесплатно`
  String get free {
    return Intl.message(
      'Бесплатно',
      name: 'free',
      desc: '',
      args: [],
    );
  }

  /// `Стоимость товаров`
  String get productsCost {
    return Intl.message(
      'Стоимость товаров',
      name: 'productsCost',
      desc: '',
      args: [],
    );
  }

  /// `Чек об оплате`
  String get paymentReceipt {
    return Intl.message(
      'Чек об оплате',
      name: 'paymentReceipt',
      desc: '',
      args: [],
    );
  }

  /// `Заказы`
  String get orders {
    return Intl.message(
      'Заказы',
      name: 'orders',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Localization> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Localization> load(Locale locale) => Localization.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
