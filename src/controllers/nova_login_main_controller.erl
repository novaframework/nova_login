-module(nova_login_main_controller).
-export([
         index/1
        ]).

index(_Req) ->
    #{client_id := ClientId} = application:get_env(novasecure, github, undefined),
    {ok, [{client_id, ClientId}]}.
