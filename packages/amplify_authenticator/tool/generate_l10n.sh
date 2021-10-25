#!/bin/bash

HEADER=$(cat <<EOF
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

import 'package:amplify_authenticator/amplify_authenticator.dart';
EOF
)

OUTPUT_DIR=lib/src/l10n/generated
TEMPLATES=('titles_en.arb' 'buttons_en.arb' 'inputs_en.arb')
ARB_DIRS=('lib/src/l10n/src/titles' 'lib/src/l10n/src/buttons' 'lib/src/l10n/src/inputs')
OUTPUT_CLASSES=('AuthenticatorTitleLocalizations' 'AuthenticatorButtonLocalizations' 'AuthenticatorInputLocalizations')
OUTPUT_FILES=('title_localizations.dart' 'button_localizations.dart' 'input_localizations.dart')

for i in "${!TEMPLATES[@]}"; do
    ARB_DIR=${ARB_DIRS[i]}
    TEMPLATE=${TEMPLATES[i]}
    OUTPUT_CLASS=${OUTPUT_CLASSES[i]}
    OUTPUT_FILE=${OUTPUT_FILES[i]}

    echo "Generating localizations for \"${ARB_DIR}/${TEMPLATE}\""

    flutter gen-l10n \
        --arb-dir $ARB_DIR \
        --output-dir $OUTPUT_DIR \
        --template-arb-file $TEMPLATE \
        --output-localization-file $OUTPUT_FILE \
        --output-class $OUTPUT_CLASS \
        --header "$HEADER" \
        --use-deferred-loading \
        --no-synthetic-package \
        --required-resource-attributes \
        --nullable-getter
done

# Clean up generated files
flutter format $OUTPUT_DIR
dart fix --apply