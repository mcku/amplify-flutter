/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'dart:async';
import 'dart:core';
import 'package:amplify_auth_cognito_platform_interface/src/CognitoDevice/cognito_device.dart';
import 'package:amplify_auth_cognito_platform_interface/src/CognitoHubEvents/AuthHubEvent.dart';
import 'package:amplify_auth_plugin_interface_poc/amplify_auth_plugin_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import './method_channel_auth_cognito.dart';
import './amplify_auth_cognito_stream_controller.dart';

export './src/types.dart';
export 'package:amplify_auth_plugin_interface_poc/src/types.dart';

class AmplifyAuthCognitoPlatform extends PlatformInterface {
  static final Object _token = Object();

  /// Constructs a AmplifyAuthCognito plugin
  AmplifyAuthCognitoPlatform() : super(token: _token);

  static AmplifyAuthCognitoPlatform _instance =
      AmplifyAuthCognitoMethodChannel();
  static AuthStreamController streamWrapper = AuthStreamController();

  static AmplifyAuthCognitoPlatform get instance => _instance;

  static set instance(AmplifyAuthCognitoPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> addPlugin() async {
    return _instance.addPlugin();
  }

  StreamController<AuthHubEvent> get streamController {
    return streamWrapper.authStreamController;
  }

  Future<SignUpResult> signUp({required SignUpRequest request}) async {
    final res = await _instance.signUp(request: request);
    return res;
  }

  Future<SignUpResult> confirmSignUp(
      {required ConfirmSignUpRequest request}) async {
    final res = await _instance.confirmSignUp(request: request);
    return res;
  }

  Future<ResendSignUpCodeResult> resendSignUpCode(
      {required ResendSignUpCodeRequest request}) async {
    final res = await _instance.resendSignUpCode(request: request);
    return res;
  }

  Future<SignInResult> signIn({required SignInRequest request}) async {
    final res = await _instance.signIn(request: request);
    return res;
  }

  Future<SignInResult> confirmSignIn(
      {required ConfirmSignInRequest request}) async {
    final res = await _instance.confirmSignIn(request: request);
    return res;
  }

  Future<SignOutResult> signOut({SignOutRequest? request}) async {
    final res = await _instance.signOut(request: request);
    return res;
  }

  Future<UpdatePasswordResult> updatePassword(
      {UpdatePasswordRequest? request}) async {
    final res = await _instance.updatePassword(request: request);
    return res;
  }

  Future<ResetPasswordResult> resetPassword(
      {ResetPasswordRequest? request}) async {
    final res = await _instance.resetPassword(request: request);
    return res;
  }

  Future<UpdatePasswordResult> confirmResetPassword(
      {ConfirmResetPasswordRequest? request}) async {
    final res = await _instance.confirmResetPassword(request: request);
    return res;
  }

  Future<AuthUser> getCurrentUser({AuthUserRequest? request}) async {
    final res = await _instance.getCurrentUser();
    return res;
  }

  Future<List<AuthUserAttribute>> fetchUserAttributes(
      {FetchUserAttributesRequest? request}) async {
    final res = await _instance.fetchUserAttributes();
    return res;
  }

  Future<AuthSession> fetchAuthSession({AuthSessionRequest? request}) async {
    final res = await _instance.fetchAuthSession(request: request);
    return res;
  }

  Future<SignInResult> signInWithWebUI(
      {SignInWithWebUIRequest? request}) async {
    final res = await _instance.signInWithWebUI(request: request);
    return res;
  }

  Future<UpdateUserAttributeResult> updateUserAttribute(
      {UpdateUserAttributeRequest? request}) async {
    final res = await _instance.updateUserAttribute(request: request);
    return res;
  }

  Future<Map<UserAttributeKey, UpdateUserAttributeResult>> updateUserAttributes(
      {required UpdateUserAttributesRequest request}) async {
    final res = await _instance.updateUserAttributes(request: request);
    return res;
  }

  Future<ConfirmUserAttributeResult> confirmUserAttribute(
      {ConfirmUserAttributeRequest? request}) async {
    final res = await _instance.confirmUserAttribute(request: request);
    return res;
  }

  Future<ResendUserAttributeConfirmationCodeResult>
      resendUserAttributeConfirmationCode({
    ResendUserAttributeConfirmationCodeRequest? request,
  }) async {
    final res =
        await _instance.resendUserAttributeConfirmationCode(request: request);
    return res;
  }

  @override
  Future<void> rememberDevice() {
    return _instance.rememberDevice();
  }

  @override
  Future<void> forgetDevice([AuthDevice? device]) {
    return _instance.forgetDevice(device);
  }

  @override
  Future<List<CognitoDevice>> fetchDevices() {
    return _instance.fetchDevices();
  }
}