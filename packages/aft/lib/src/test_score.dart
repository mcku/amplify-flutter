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

import 'package:aft/src/utils/emphasize_text.dart';

class TestScore {
  TestScore({this.passed = 0, this.skipped = 0, this.failed = 0});

  /// The number of passed tests
  int passed;

  /// The number of failed tests
  int failed;

  /// The number of skipped tests
  int skipped;

  String get prettyTotal {
    return '${formatSuccess('+${passed.toString()}')} ${formatWarning('~${skipped.toString()}')} -${formatException('-${failed.toString()}')}';
  }
}
