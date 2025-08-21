import 'package:ez_sauda/l10n/generated/l10n.dart';
import 'package:injectable/injectable.dart';

@injectable
class LocaleConfig {
  Localization get locale => Localization.current;
  final delegate = AppLocalizationDelegate();
}
