// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_core/amplify_core.dart';
import 'package:logging/logging.dart';

class SimplePrinter implements AmplifyLoggerPlugin {
  SimplePrinter();

  @override
  void handleLogRecord(LogRecord record) {
    final buffer = StringBuffer();

    // Log Level
    buffer.write(record.level.toString());

    // Log Namespace
    buffer.write(' ');

    final namespace = record.loggerName == AmplifyLogger.loggerNamespace
        ? ''
        : record.loggerName.split('.')[2];
    if (namespace.isNotEmpty) {
      buffer.write(namespace);
    }

    // Log Message
    buffer.write(' ');
    buffer.write(record.message);

    safePrint(buffer.toString());
  }
}
