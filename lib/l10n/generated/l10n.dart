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
    assert(
      _current != null,
      'No instance of Localization was loaded. Try to initialize the Localization delegate before accessing Localization.current.',
    );
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
    assert(
      instance != null,
      'No instance of Localization present in the widget tree. Did you add Localization.delegate in localizationsDelegates?',
    );
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
    return Intl.message('Готово', name: 'done', desc: '', args: []);
  }

  /// `Главная`
  String get home {
    return Intl.message('Главная', name: 'home', desc: '', args: []);
  }

  /// `Каталог`
  String get catalog {
    return Intl.message('Каталог', name: 'catalog', desc: '', args: []);
  }

  /// `Корзина`
  String get cart {
    return Intl.message('Корзина', name: 'cart', desc: '', args: []);
  }

  /// `Избранное`
  String get favorite {
    return Intl.message('Избранное', name: 'favorite', desc: '', args: []);
  }

  /// `Профиль`
  String get profile {
    return Intl.message('Профиль', name: 'profile', desc: '', args: []);
  }

  /// `Войти`
  String get logIn {
    return Intl.message('Войти', name: 'logIn', desc: '', args: []);
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
    return Intl.message('Логин', name: 'username', desc: '', args: []);
  }

  /// `Пароль`
  String get password {
    return Intl.message('Пароль', name: 'password', desc: '', args: []);
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
    return Intl.message('Поиск', name: 'search', desc: '', args: []);
  }

  /// `Категории`
  String get categories {
    return Intl.message('Категории', name: 'categories', desc: '', args: []);
  }

  /// `Посмотреть все`
  String get viewAll {
    return Intl.message('Посмотреть все', name: 'viewAll', desc: '', args: []);
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
    return Intl.message('В корзину', name: 'toCart', desc: '', args: []);
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
    return Intl.message('Бренды', name: 'brands', desc: '', args: []);
  }

  /// `Поставщики`
  String get suppliers {
    return Intl.message('Поставщики', name: 'suppliers', desc: '', args: []);
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
  String supplierCount(Object count) {
    return Intl.message(
      'Поставщик ($count)',
      name: 'supplierCount',
      desc: '',
      args: [count],
    );
  }

  /// `Доставка`
  String get delivery {
    return Intl.message('Доставка', name: 'delivery', desc: '', args: []);
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
    return Intl.message('Штрихкод', name: 'barcode', desc: '', args: []);
  }

  /// `Состав`
  String get composition {
    return Intl.message('Состав', name: 'composition', desc: '', args: []);
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
    return Intl.message('Показано:', name: 'shown', desc: '', args: []);
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
    return Intl.message('Акции', name: 'promotions', desc: '', args: []);
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
    return Intl.message('Выше рейтинг', name: 'highRating', desc: '', args: []);
  }

  /// `Ниже рейтинг`
  String get lowRating {
    return Intl.message('Ниже рейтинг', name: 'lowRating', desc: '', args: []);
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
    return Intl.message('Цена', name: 'cost', desc: '', args: []);
  }

  /// `Применить`
  String get apply {
    return Intl.message('Применить', name: 'apply', desc: '', args: []);
  }

  /// `Сохранить`
  String get save {
    return Intl.message('Сохранить', name: 'save', desc: '', args: []);
  }

  /// `Подробнее`
  String get readMore {
    return Intl.message('Подробнее', name: 'readMore', desc: '', args: []);
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
    return Intl.message('Ваши отзывы', name: 'yourReviews', desc: '', args: []);
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
    return Intl.message('Жалобы', name: 'complaints', desc: '', args: []);
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
    return Intl.message('Выйти', name: 'logout', desc: '', args: []);
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
    return Intl.message('Отмена', name: 'cancel', desc: '', args: []);
  }

  /// `Да, выйти`
  String get yesLogout {
    return Intl.message('Да, выйти', name: 'yesLogout', desc: '', args: []);
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

  /// `Выбрать`
  String get select {
    return Intl.message('Выбрать', name: 'select', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Localization> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[Locale.fromSubtags(languageCode: 'ru')];
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
