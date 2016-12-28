# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Dockerfile for installing the necessary dependencies for building Avro.
# See BUILD.txt.

FROM java:7-jdk

WORKDIR /root

# Add the repository for node.js 4.x
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -

# Install dependencies from packages
RUN apt-get update && apt-get install --no-install-recommends -y \
  git subversion curl \
  nodejs \
  libsnappy1 libsnappy-dev

# Install global Node modules
RUN npm install -g grunt-cli
