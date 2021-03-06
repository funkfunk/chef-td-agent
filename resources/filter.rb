#
# Cookbok Name:: td-agent
# Resource:: filter
#
# Author:: Anthony Scalisi <scalisi.a@gmail.com>
#
#
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
#

actions :create, :delete
default_action :create

attribute :filter_name, :kind_of => String, :name_attribute => true, :required => true
attribute :type, :kind_of => String, :required => true
attribute :tag, :kind_of => String, :required => true
attribute :parameters, :default => {}

# Workaround for backward compatibility for Chef pre-13 (#99)
if TdAgent::Helpers.apply_params_kludge?
  attribute :params, :default => {}
end
