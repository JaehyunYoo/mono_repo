part of 'log.dart';

class LogUtils {
  LogUtils._();

  ///
  ///@ Logger Color Custom
  ///
  static Map<Level, AnsiColor> pbColor = {
    Level.trace: AnsiColor.fg(AnsiColor.grey(0.5)),
    Level.debug: const AnsiColor.fg(041),
    Level.info: const AnsiColor.fg(033),
    Level.warning: const AnsiColor.fg(063),
    Level.error: const AnsiColor.fg(014),
    Level.fatal: const AnsiColor.fg(199),
  };

  ///
  ///@ Logger Line Draw
  ///

  static String lineDraw({int? lineLength}) {
    String line = '';
    for (int i = 0; i < (lineLength ?? 120); i++) {
      line += '─';
    }
    return line;
  }

  ///
  ///@ Time Print
  ///
  static DateTime startTime =
      DateTime.now().copyWith(second: 0, millisecond: 0, microsecond: 0);
}
