#!/bin/bash
#
#  Copyright (c) 2016 Intel Corporation 
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#


MODULE=model-scoring-java-$VERSION.$POST_TAG$BUILD_NUMBER


pushd target

    mkdir -p $MODULE/bin
    mkdir -p $MODULE/conf

    cp -Rv lib $MODULE/

    ls -la $MODULE

    cp model-scoring*.jar $MODULE/

    cp ../bin/model-scoring.sh $MODULE/bin/
    cp ../conf/application.conf.scoring $MODULE/conf/application.conf


    zip  -r $MODULE.zip $MODULE

popd







