# --
# Copyright (C) 2008-2010 10gen Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ++

module Mongo
  # Generic Mongo Ruby Driver exception class.
  class MongoRubyError < StandardError; end

  # Raised when MongoDB itself has returned an error.
  class MongoDBError < RuntimeError; end

  # Raised when given a string is not valid utf-8 (Ruby 1.8 only).
  class InvalidStringEncoding < MongoRubyError; end

  # Raised when attempting to initialize an invalid ObjectID.
  class InvalidObjectID < MongoRubyError; end

  # Raised when trying to insert a document that exceeds the 4MB limit or
  # when the document contains objects that can't be serialized as BSON.
  class InvalidDocument < MongoDBError; end

  # Raised when an invalid name is used.
  class InvalidName < RuntimeError; end
end
