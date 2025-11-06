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

  static String m1(date) => "Доставка: ${date}";

  static String m2(count) => "Поставщик (${count})";

  static String m3(num) => "${num} товаров";

  static String m4(num) => "Товары (${num})";

  static String m5(cost) => "Мин. сумма заказа ${cost} ₸";

  static String m6(amount) => "Мин. сумма заказа ${amount} ₸";

  static String m7(cost) => "Минимальная сумма заказа: ${cost} ₸";

  static String m8(num) => "${num} товара";

  static String m9(count) => "(${count} отзывов)";

  static String m10(number) => "Заказ №${number}";

  static String m11(count) => "${count} товаров";

  static String m12(count) => "Отзывы (${count})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutTheProduct": MessageLookupByLibrary.simpleMessage("О товаре"),
        "allInfoProvidedBySeller": MessageLookupByLibrary.simpleMessage(
            "Вся информация предоставлена продавцом"),
        "amount": MessageLookupByLibrary.simpleMessage("Количество"),
        "apply": MessageLookupByLibrary.simpleMessage("Применить"),
        "barcode": MessageLookupByLibrary.simpleMessage("Штрихкод"),
        "brands": MessageLookupByLibrary.simpleMessage("Бренды"),
        "byClickingYouAcceptTerms": MessageLookupByLibrary.simpleMessage(
            "Нажимая кнопку “Войти” Вы принимаете условия Политики конфиденциальности"),
        "byOrderDate": MessageLookupByLibrary.simpleMessage("По дате заказа"),
        "byOrderSum": MessageLookupByLibrary.simpleMessage("По сумме заказа"),
        "cancel": MessageLookupByLibrary.simpleMessage("Отмена"),
        "cancelled": MessageLookupByLibrary.simpleMessage("Отменен"),
        "cart": MessageLookupByLibrary.simpleMessage("Корзина"),
        "cartUnits": m0,
        "catalog": MessageLookupByLibrary.simpleMessage("Каталог"),
        "categories": MessageLookupByLibrary.simpleMessage("Категории"),
        "changeDeliveryDate":
            MessageLookupByLibrary.simpleMessage("Изменить дату доставки"),
        "cheapFirst": MessageLookupByLibrary.simpleMessage("Сначала дешевые"),
        "commentsOnTheOrder":
            MessageLookupByLibrary.simpleMessage("Комментарии к заказу"),
        "complaints": MessageLookupByLibrary.simpleMessage("Жалобы"),
        "composition": MessageLookupByLibrary.simpleMessage("Состав"),
        "confirm": MessageLookupByLibrary.simpleMessage("Подтверждение"),
        "confirmLogout": MessageLookupByLibrary.simpleMessage(
            "Вы уверены, что хотите выйти из аккаунта?"),
        "confirmed": MessageLookupByLibrary.simpleMessage("Подтвержден"),
        "cost": MessageLookupByLibrary.simpleMessage("Цена"),
        "currentOrders": MessageLookupByLibrary.simpleMessage("Текущие заказы"),
        "currentOrdersDescription":
            MessageLookupByLibrary.simpleMessage("Проверьте статус заказа"),
        "customerSupport":
            MessageLookupByLibrary.simpleMessage("Техподдержка EasySauda"),
        "customerSupportDescription": MessageLookupByLibrary.simpleMessage(
            "Поможем Вам по любым вопросам"),
        "date": MessageLookupByLibrary.simpleMessage("Дата"),
        "delivered": MessageLookupByLibrary.simpleMessage("Доставлен"),
        "delivery": MessageLookupByLibrary.simpleMessage("Доставка"),
        "deliveryCost":
            MessageLookupByLibrary.simpleMessage("Стоимость доставки"),
        "deliveryDate": m1,
        "distributor": MessageLookupByLibrary.simpleMessage("Поставщик"),
        "distributorCount": m2,
        "distributors": MessageLookupByLibrary.simpleMessage("Поставщики"),
        "done": MessageLookupByLibrary.simpleMessage("Готово"),
        "enterComment":
            MessageLookupByLibrary.simpleMessage("Введите комментарии"),
        "errorOccurred":
            MessageLookupByLibrary.simpleMessage("Произошла ошибка"),
        "expensiveFirst":
            MessageLookupByLibrary.simpleMessage("Сначала дорогие"),
        "favorite": MessageLookupByLibrary.simpleMessage("Избранное"),
        "filter": MessageLookupByLibrary.simpleMessage("Фильтр"),
        "free": MessageLookupByLibrary.simpleMessage("Бесплатно"),
        "fromFourPointFiveRating":
            MessageLookupByLibrary.simpleMessage("С рейтингом от 4.5"),
        "goToCatalog":
            MessageLookupByLibrary.simpleMessage("Перейти в каталог"),
        "highRating": MessageLookupByLibrary.simpleMessage("Выше рейтинг"),
        "home": MessageLookupByLibrary.simpleMessage("Главная"),
        "inDelivery": MessageLookupByLibrary.simpleMessage("В доставке"),
        "itemsAmount": m3,
        "itemsNum": m4,
        "logIn": MessageLookupByLibrary.simpleMessage("Войти"),
        "logInToAccess": MessageLookupByLibrary.simpleMessage(
            "Войдите в систему, чтобы получить полный доступ к сервису"),
        "logout": MessageLookupByLibrary.simpleMessage("Выйти"),
        "lowRating": MessageLookupByLibrary.simpleMessage("Ниже рейтинг"),
        "measurementUnit":
            MessageLookupByLibrary.simpleMessage("Единица измерения"),
        "minOrderSum": m5,
        "minOrderSumAmount": m6,
        "minimalOrderSum": m7,
        "month": MessageLookupByLibrary.simpleMessage("Месяц"),
        "myOrders": MessageLookupByLibrary.simpleMessage("Мои заказы"),
        "numItems": m8,
        "ofReviewsCount": m9,
        "orderHistory": MessageLookupByLibrary.simpleMessage("История заказов"),
        "orderHistoryDescription": MessageLookupByLibrary.simpleMessage(
            "Тут Вы можете повторить, сделать возврат, обменять, отменить заказ"),
        "orderNumber": m10,
        "orderSuccess": MessageLookupByLibrary.simpleMessage(
            "Ваш заказ успешно оформлен\nи уже передан поставщику."),
        "orderSum": MessageLookupByLibrary.simpleMessage("Сумма заказа"),
        "orders": MessageLookupByLibrary.simpleMessage("Заказы"),
        "ordersNotFound":
            MessageLookupByLibrary.simpleMessage("Заказы не найдены"),
        "password": MessageLookupByLibrary.simpleMessage("Пароль"),
        "passwordDescription": MessageLookupByLibrary.simpleMessage(
            "Возможность изменить/сбросить пароль"),
        "paymentReceipt": MessageLookupByLibrary.simpleMessage("Чек об оплате"),
        "placeAnOrder": MessageLookupByLibrary.simpleMessage("Оформить заказ"),
        "placingAnOrder":
            MessageLookupByLibrary.simpleMessage("Оформление заказа"),
        "plannedDelivery":
            MessageLookupByLibrary.simpleMessage("Планируемая доставка"),
        "privacyPolicy":
            MessageLookupByLibrary.simpleMessage("Политика конфиденциальности"),
        "privacyPolicySubtitle": MessageLookupByLibrary.simpleMessage(
            "Нажимая на кнопку, вы соглашаетесь с Условиями обработки персональных данных, а также с Условиями продажи"),
        "proceedToCheckout":
            MessageLookupByLibrary.simpleMessage("Перейти к оформлению"),
        "productAmountInPackage": MessageLookupByLibrary.simpleMessage(
            "Количество предметов в упаковке"),
        "productDescription":
            MessageLookupByLibrary.simpleMessage("Описание товара"),
        "productsAmount": m11,
        "productsCost":
            MessageLookupByLibrary.simpleMessage("Стоимость товаров"),
        "profile": MessageLookupByLibrary.simpleMessage("Профиль"),
        "promotions": MessageLookupByLibrary.simpleMessage("Акции"),
        "readMore": MessageLookupByLibrary.simpleMessage("Подробнее"),
        "recommendations": MessageLookupByLibrary.simpleMessage("Рекомендации"),
        "responsible": MessageLookupByLibrary.simpleMessage("Отвественный"),
        "returnAndExchangeConditions":
            MessageLookupByLibrary.simpleMessage("Условия возврата и обмена"),
        "returnToShopping":
            MessageLookupByLibrary.simpleMessage("Вернуться к покупкам"),
        "returned": MessageLookupByLibrary.simpleMessage("Возвращен"),
        "reviewsCount": m12,
        "save": MessageLookupByLibrary.simpleMessage("Сохранить"),
        "search": MessageLookupByLibrary.simpleMessage("Поиск"),
        "select": MessageLookupByLibrary.simpleMessage("Выбрать"),
        "selectAll": MessageLookupByLibrary.simpleMessage("Выбрать все"),
        "shown": MessageLookupByLibrary.simpleMessage("Показано:"),
        "similarProducts":
            MessageLookupByLibrary.simpleMessage("Похожие товары"),
        "sort": MessageLookupByLibrary.simpleMessage("Сортировать"),
        "status": MessageLookupByLibrary.simpleMessage("Статус"),
        "sum": MessageLookupByLibrary.simpleMessage("Сумма"),
        "supplierList":
            MessageLookupByLibrary.simpleMessage("Список поставщиков"),
        "supplierListDescription": MessageLookupByLibrary.simpleMessage(
            "С которыми Вы взаимодействовали"),
        "thankYouForOrder":
            MessageLookupByLibrary.simpleMessage("Спасибо за заказ!"),
        "toCart": MessageLookupByLibrary.simpleMessage("В корзину"),
        "today": MessageLookupByLibrary.simpleMessage("Сегодня"),
        "total": MessageLookupByLibrary.simpleMessage("Итого"),
        "tryToChangeSearchParameters": MessageLookupByLibrary.simpleMessage(
            "Попробуйте изменить параметры поиска"),
        "underReview": MessageLookupByLibrary.simpleMessage("На рассмотрении"),
        "username": MessageLookupByLibrary.simpleMessage("Логин"),
        "viewAll": MessageLookupByLibrary.simpleMessage("Посмотреть все"),
        "week": MessageLookupByLibrary.simpleMessage("Неделя"),
        "wrongLoginOrPassword": MessageLookupByLibrary.simpleMessage(
            "Вы ввели неверные имя пользователя и/или пароль "),
        "yesLogout": MessageLookupByLibrary.simpleMessage("Да, выйти"),
        "youHaveNoCartItems": MessageLookupByLibrary.simpleMessage(
            "У вас нет предметов в корзине"),
        "youHaveNoOrders":
            MessageLookupByLibrary.simpleMessage("У вас пока нет заказов"),
        "yourDataWillBeSavedAfterLogout": MessageLookupByLibrary.simpleMessage(
            "Ваши данные будут сохранены после завершения сеанса"),
        "yourOrder": MessageLookupByLibrary.simpleMessage("Ваш заказ"),
        "yourReviews": MessageLookupByLibrary.simpleMessage("Ваши отзывы"),
        "yourReviewsDescription":
            MessageLookupByLibrary.simpleMessage("Поделитесь мнением о товаре")
      };
}
