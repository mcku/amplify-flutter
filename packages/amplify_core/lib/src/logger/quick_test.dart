import 'package:amplify_core/src/logger/simple_printer.dart';

import '../../amplify_core.dart';

void main() {
  AmplifyLogger()
    ..registerPlugin(SimplePrinter())
    ..warn("hi");

  AmplifyLogger.category(Category.analytics)
    ..registerPlugin(SimplePrinter())
    ..warn("hi");
}
