/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_auth_plugin_interface_poc/amplify_auth_plugin_interface.dart';

/// Thrown when Amplify could not perform the action because there are incorrect parameters.
class InvalidParameterException extends AuthException {
  /// Named constructor
  InvalidParameterException(String message,
      {String? recoverySuggestion, String? underlyingException})
      : super(message,
            recoverySuggestion: recoverySuggestion,
            underlyingException: underlyingException);

  /// Constructor for down casting an AuthException to this exception
  InvalidParameterException._private(AuthException exception)
      : super(exception.message,
            recoverySuggestion: exception.recoverySuggestion,
            underlyingException: exception.underlyingException);

  /// Instantiates and return a new `AuthException` from the
  /// serialized exception data
  static InvalidParameterException fromMap(
      Map<String, String> serializedException) {
    return InvalidParameterException._private(
        AuthException.fromMap(serializedException));
  }
}