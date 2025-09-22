// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  static String m0(num) => "${num} ед.";

  static String m1(cost) => "Мин. сумма заказа ${cost} ₸";

  static String m2(amount) => "Мин. сумма заказа ${amount} ₸";

  static String m3(cost) => "Минимальная сумма заказа: ${cost} ₸";

  static String m4(count) => "(${count} отзывов)";

  static String m5(count) => "${count} товаров";

  static String m6(count) => "Отзывы (${count})";

  static String m7(count) => "Поставщик (${count})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "aboutTheProduct": MessageLookupByLibrary.simpleMessage("О товаре"),
    "allInfoProvidedBySeller": MessageLookupByLibrary.simpleMessage(
      "Вся информация предоставлена продавцом",
    ),
    "apply": MessageLookupByLibrary.simpleMessage("Применить"),
    "barcode": MessageLookupByLibrary.simpleMessage("Штрихкод"),
    "brands": MessageLookupByLibrary.simpleMessage("Бренды"),
    "byClickingYouAcceptTerms": MessageLookupByLibrary.simpleMessage(
      "Нажимая кнопку “Войти” Вы принимаете условия Политики конфиденциальности",
    ),
    "cancel": MessageLookupByLibrary.simpleMessage("Отмена"),
    "cart": MessageLookupByLibrary.simpleMessage("Корзина"),
    "cartUnits": m0,
    "catalog": MessageLookupByLibrary.simpleMessage("Каталог"),
    "categories": MessageLookupByLibrary.simpleMessage("Категории"),
    "cheapFirst": MessageLookupByLibrary.simpleMessage("Сначала дешевые"),
    "complaints": MessageLookupByLibrary.simpleMessage("Жалобы"),
    "composition": MessageLookupByLibrary.simpleMessage("Состав"),
    "confirmLogout": MessageLookupByLibrary.simpleMessage(
      "Вы уверены, что хотите выйти из аккаунта?",
    ),
    "cost": MessageLookupByLibrary.simpleMessage("Цена"),
    "currentOrders": MessageLookupByLibrary.simpleMessage("Текущие заказы"),
    "currentOrdersDescription": MessageLookupByLibrary.simpleMessage(
      "Проверьте статус заказа",
    ),
    "customerSupport": MessageLookupByLibrary.simpleMessage(
      "Техподдержка EasySauda",
    ),
    "customerSupportDescription": MessageLookupByLibrary.simpleMessage(
      "Поможем Вам по любым вопросам",
    ),
    "delivery": MessageLookupByLibrary.simpleMessage("Доставка"),
    "done": MessageLookupByLibrary.simpleMessage("Готово"),
    "errorOccurred": MessageLookupByLibrary.simpleMessage("Произошла ошибка"),
    "expensiveFirst": MessageLookupByLibrary.simpleMessage("Сначала дорогие"),
    "favorite": MessageLookupByLibrary.simpleMessage("Избранное"),
    "fromFourPointFiveRating": MessageLookupByLibrary.simpleMessage(
      "С рейтингом от 4.5",
    ),
    "highRating": MessageLookupByLibrary.simpleMessage("Выше рейтинг"),
    "home": MessageLookupByLibrary.simpleMessage("Главная"),
    "logIn": MessageLookupByLibrary.simpleMessage("Войти"),
    "logInToAccess": MessageLookupByLibrary.simpleMessage(
      "Войдите в систему, чтобы получить полный доступ к сервису",
    ),
    "logout": MessageLookupByLibrary.simpleMessage("Выйти"),
    "lowRating": MessageLookupByLibrary.simpleMessage("Ниже рейтинг"),
    "measurementUnit": MessageLookupByLibrary.simpleMessage(
      "Единица измерения",
    ),
    "minOrderSum": m1,
    "minOrderSumAmount": m2,
    "minimalOrderSum": m3,
    "ofReviewsCount": m4,
    "orderHistory": MessageLookupByLibrary.simpleMessage("История заказов"),
    "orderHistoryDescription": MessageLookupByLibrary.simpleMessage(
      "Тут Вы можете повторить, сделать возврат, обменять, отменить заказ",
    ),
    "password": MessageLookupByLibrary.simpleMessage("Пароль"),
    "passwordDescription": MessageLookupByLibrary.simpleMessage(
      "Возможность изменить/сбросить пароль",
    ),
    "privacyPolicy": MessageLookupByLibrary.simpleMessage(
      "Политика конфиденциальности",
    ),
    "proceedToCheckout": MessageLookupByLibrary.simpleMessage(
      "Перейти к оформлению",
    ),
    "productAmountInPackage": MessageLookupByLibrary.simpleMessage(
      "Количество предметов в упаковке",
    ),
    "productDescription": MessageLookupByLibrary.simpleMessage(
      "Описание товара",
    ),
    "productsAmount": m5,
    "profile": MessageLookupByLibrary.simpleMessage("Профиль"),
    "promotions": MessageLookupByLibrary.simpleMessage("Акции"),
    "readMore": MessageLookupByLibrary.simpleMessage("Подробнее"),
    "recommendations": MessageLookupByLibrary.simpleMessage("Рекомендации"),
    "returnAndExchangeConditions": MessageLookupByLibrary.simpleMessage(
      "Условия возврата и обмена",
    ),
    "reviewsCount": m6,
    "save": MessageLookupByLibrary.simpleMessage("Сохранить"),
    "search": MessageLookupByLibrary.simpleMessage("Поиск"),
    "select": MessageLookupByLibrary.simpleMessage("Выбрать"),
    "selectAll": MessageLookupByLibrary.simpleMessage("Выбрать все"),
    "shown": MessageLookupByLibrary.simpleMessage("Показано:"),
    "similarProducts": MessageLookupByLibrary.simpleMessage("Похожие товары"),
    "supplierCount": m7,
    "supplierList": MessageLookupByLibrary.simpleMessage("Список поставщиков"),
    "supplierListDescription": MessageLookupByLibrary.simpleMessage(
      "С которыми Вы взаимодействовали",
    ),
    "suppliers": MessageLookupByLibrary.simpleMessage("Поставщики"),
    "toCart": MessageLookupByLibrary.simpleMessage("В корзину"),
    "username": MessageLookupByLibrary.simpleMessage("Логин"),
    "viewAll": MessageLookupByLibrary.simpleMessage("Посмотреть все"),
    "wrongLoginOrPassword": MessageLookupByLibrary.simpleMessage(
      "Вы ввели неверные имя пользователя и/или пароль ",
    ),
    "yesLogout": MessageLookupByLibrary.simpleMessage("Да, выйти"),
    "yourDataWillBeSavedAfterLogout": MessageLookupByLibrary.simpleMessage(
      "Ваши данные будут сохранены после завершения сеанса",
    ),
    "yourReviews": MessageLookupByLibrary.simpleMessage("Ваши отзывы"),
    "yourReviewsDescription": MessageLookupByLibrary.simpleMessage(
      "Поделитесь мнением о товаре",
    ),
  };
}
