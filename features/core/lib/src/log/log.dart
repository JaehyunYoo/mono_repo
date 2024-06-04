import 'package:logger/logger.dart';
part 'log_utils.dart';

/// 2024-04-30 by poby
/// @ Custom Logger
///

enum CustomForegroundColor {
  cu,
  pb,
  le,
  log,
  err,
}

class PB {
  PB._();

  static Logger _log({int? lineLength, int? errMethodCount, int? methodCount}) {
    final logger = Logger(
      printer: PrettyPrinter(
        methodCount: methodCount ?? 4,
        lineLength: lineLength ?? 119,
        errorMethodCount: errMethodCount,
        printEmojis: false,
        levelColors: LogUtils.pbColor,
      ),
    );
    return logger;
  }

  ///
  /// LOG
  ///
  static void l({
    String? tag,
    required message,
    CustomForegroundColor? colorTag,
    int? methodCount,
  }) {
    _log().log(Logger.level, '123123123');
    // _log().l(
    //     '🧑🏻‍💻 ${colorTag ?? ''}${tag ?? 'DEBUG'} StartTime:${LogUtils.startTime}\n${LogUtils.lineDraw(120)}\n$message');
  }

  ///
  /// DEBUG
  ///
  static void d(
      {String? tag,
      required message,
      CustomForegroundColor? colorTag,
      int? methodCount}) {
    _log().d(
        '⛑️ ${colorTag ?? ''}${tag ?? 'DEBUG'} StartTime:${LogUtils.startTime}\n${LogUtils.lineDraw()}\n$message');
  }

  ///
  /// INFO
  ///
  static void i(
      {String? tag,
      required message,
      CustomForegroundColor? colorTag,
      int? methodCount}) {
    _log().i(
        '🦊 ${colorTag ?? ''}${tag ?? 'INFO'} StartTime:${LogUtils.startTime}\n${LogUtils.lineDraw()}\n$message');
  }

  ///
  /// ERROR
  ///
  static void e(
      {String? tag,
      required message,
      CustomForegroundColor? colorTag,
      int? errorMethodCount,
      int? methodCount}) {
    _log(errMethodCount: errorMethodCount).e(
        '🤡 ${colorTag ?? ''}${tag ?? 'ERROR'} StartTime:${LogUtils.startTime}\n${LogUtils.lineDraw()}\n$message');
  }

  ///
  /// FATAL
  ///
  static void f(
      {String? tag,
      CustomForegroundColor? colorTag,
      required message,
      int? errMethodCount,
      int? methodCount}) {
    _log(errMethodCount: errMethodCount).f(
        '🔥 ${colorTag ?? ''}${tag ?? 'FATAL'} StartTime:${LogUtils.startTime}\n${LogUtils.lineDraw()}\n$message');
  }

  ///
  /// WARNING
  ///
  static void w(
      {String? tag,
      CustomForegroundColor? colorTag,
      required message,
      int? errMethodCount,
      int? methodCount}) {
    _log(errMethodCount: errMethodCount).w(
        '🌟 ${colorTag ?? ''}${tag ?? 'WARNING'} StartTime:${LogUtils.startTime}\n${LogUtils.lineDraw()}\n$message');
  }
}
