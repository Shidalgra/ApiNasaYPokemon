import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['es', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? esText = '',
    String? enText = '',
  }) =>
      [esText, enText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'z9nclqse': {
      'es': '[ Ingrese un texto...]',
      'en': '',
    },
    '23lnxf7y': {
      'es': 'Parámetro',
      'en': '',
    },
    'wztzya4k': {
      'es': 'Pokemon',
      'en': '',
    },
    'sxg7iby9': {
      'es': 'Fotos Marte',
      'en': '',
    },
    'z3uoiw3p': {
      'es': 'Semana10_1',
      'en': '',
    },
    'xmrdl40l': {
      'es': 'Semana10_2',
      'en': '',
    },
    'wjefbbwc': {
      'es': 'Button',
      'en': '',
    },
    'nehrqytj': {
      'es': 'Página Principal',
      'en': '',
    },
    'zwnq444d': {
      'es': 'Home',
      'en': '',
    },
  },
  // detalle
  {
    '1y5kmx9m': {
      'es': 'Detalle',
      'en': '',
    },
    'zq63t9jq': {
      'es': 'Home',
      'en': '',
    },
  },
  // pokemon
  {
    'daxx8i1y': {
      'es': 'Pokémon',
      'en': '',
    },
    'z8w6o6zo': {
      'es': 'Home',
      'en': '',
    },
  },
  // galeria
  {
    'w8y4y86r': {
      'es': 'Fotos de Marte',
      'en': '',
    },
    'xxhkn7op': {
      'es': 'Home',
      'en': '',
    },
  },
  // Semana10_1
  {
    'u47f7747': {
      'es': 'Color',
      'en': '',
    },
    'j1ind2iw': {
      'es': 'Hola',
      'en': '',
    },
    'ap5q6331': {
      'es': 'Este es un resumen\n',
      'en': '',
    },
    '5296buif': {
      'es': 'Mensaje',
      'en': '',
    },
    '7oyvlo4p': {
      'es': 'Enviar',
      'en': '',
    },
    'ithgkw9x': {
      'es': 'Page Title',
      'en': '',
    },
    'i3besstd': {
      'es': 'Home',
      'en': '',
    },
  },
  // Semana10_2
  {
    '6z1eywnq': {
      'es': '1',
      'en': '',
    },
    'gpnyqi0v': {
      'es': '[Some hint text...]',
      'en': '',
    },
    '3qqjregb': {
      'es': 'Estudiantes',
      'en': '',
    },
    'srjnhe9x': {
      'es': '[Some hint value...]',
      'en': '',
    },
    'xgzbyib9': {
      'es': '15',
      'en': '',
    },
    'ycz55sq7': {
      'es': '2',
      'en': '',
    },
    'r89t7fio': {
      'es': '[Some hint text...]',
      'en': '',
    },
    'aw83t0ep': {
      'es': 'Docentes',
      'en': '',
    },
    'mx2gzj93': {
      'es': '[Some hint value...]',
      'en': '',
    },
    '597ysve2': {
      'es': '95',
      'en': '',
    },
    'jpiowsm8': {
      'es': '3',
      'en': '',
    },
    'wjzzry68': {
      'es': '[Some hint text...]',
      'en': '',
    },
    'hy5z9w7c': {
      'es': 'Ventas',
      'en': '',
    },
    'vbclsbwp': {
      'es': '[Some hint value...]',
      'en': '',
    },
    'mu8cefzb': {
      'es': '20',
      'en': '',
    },
    'pmyxchs0': {
      'es': '4',
      'en': '',
    },
    'svf9dg0w': {
      'es': '[Some hint text...]',
      'en': '',
    },
    'cn0rfo1q': {
      'es': 'Graduados',
      'en': '',
    },
    'z2i6peay': {
      'es': '[Some hint value...]',
      'en': '',
    },
    'q69uek24': {
      'es': '85',
      'en': '',
    },
    'ajgd23lg': {
      'es': '5',
      'en': '',
    },
    '3p93xbdu': {
      'es': '[Some hint text...]',
      'en': '',
    },
    'u7d4kj4s': {
      'es': 'Empleadores',
      'en': '',
    },
    'nfht6g0r': {
      'es': '[Some hint value...]',
      'en': '',
    },
    'mpifjb0r': {
      'es': '80',
      'en': '',
    },
    'sl7vbzn5': {
      'es': 'Escala',
      'en': '',
    },
    '5ndqtgjy': {
      'es': '[Some Escala...]',
      'en': '',
    },
    'w122wwzg': {
      'es': '100',
      'en': '',
    },
    'hyuihakt': {
      'es': 'Para graficar',
      'en': '',
    },
    '0ak1gjxs': {
      'es': 'Home',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
