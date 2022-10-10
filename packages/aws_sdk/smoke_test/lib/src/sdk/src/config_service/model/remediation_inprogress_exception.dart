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

// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library smoke_test.config_service.model.remediation_inprogress_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'remediation_inprogress_exception.g.dart';

/// Remediation action is in progress. You can either cancel execution in Amazon Web Services Systems Manager or wait and try again later.
abstract class RemediationInprogressException
    with
        _i1.AWSEquatable<RemediationInprogressException>
    implements
        Built<RemediationInprogressException,
            RemediationInprogressExceptionBuilder>,
        _i2.SmithyHttpException {
  /// Remediation action is in progress. You can either cancel execution in Amazon Web Services Systems Manager or wait and try again later.
  factory RemediationInprogressException({String? message}) {
    return _$RemediationInprogressException._(message: message);
  }

  /// Remediation action is in progress. You can either cancel execution in Amazon Web Services Systems Manager or wait and try again later.
  factory RemediationInprogressException.build(
          [void Function(RemediationInprogressExceptionBuilder) updates]) =
      _$RemediationInprogressException;

  const RemediationInprogressException._();

  /// Constructs a [RemediationInprogressException] from a [payload] and [response].
  factory RemediationInprogressException.fromResponse(
    RemediationInprogressException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    RemediationInprogressExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RemediationInprogressExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'RemediationInProgressException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int? get statusCode;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RemediationInprogressException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class RemediationInprogressExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<RemediationInprogressException> {
  const RemediationInprogressExceptionAwsJson11Serializer()
      : super('RemediationInprogressException');

  @override
  Iterable<Type> get types => const [
        RemediationInprogressException,
        _$RemediationInprogressException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  RemediationInprogressException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RemediationInprogressExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as RemediationInprogressException);
    final result = <Object?>[];
    if (payload.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}