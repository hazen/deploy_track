%% -------------------------------------------------------------------
%%
%% Copyright (c) 2016 Basho Technologies, Inc.
%%
%% This file is provided to you under the Apache License,
%% Version 2.0 (the "License"); you may not use this file
%% except in compliance with the License.  You may obtain
%% a copy of the License at
%%
%%   http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing,
%% software distributed under the License is distributed on an
%% "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
%% KIND, either express or implied.  See the License for the
%% specific language governing permissions and limitations
%% under the License.
%%
%% This module is responsible for collecting download information
%% from Amazon S3.
%%
%% -------------------------------------------------------------------

-author("hazen").
-record(analytics, {
    key              :: string(),
    source           :: deploy_track_analytics:source(),
    timestamp        :: calendar:datetime(),
    ip               :: string(),
    filename         :: string(),
    product          :: string(),
    version          :: string(),
    release = "-"    :: string(),
    os               :: string(),
    os_version       :: string(),
    user_agent       :: string()
    %% Unused
    %%ip_details       :: {ok, deploy_track_util:proplist()} |
    %%                    {error, list()} | term()
}).

%% Used by Mnesia
-record(checkpoint, {
    key   :: string(),
    value :: string()
}).

-define(CHECKPOINT_TABLE, checkpoint).
