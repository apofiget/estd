-module(estd_inet_tests).

-include_lib("eunit/include/eunit.hrl").

is_macaddr_test() ->
    ?assertEqual(estd_inet:is_macaddr("AB:CD:EF:00:11:22"), true),
    ?assertEqual(estd_inet:is_macaddr("AB-CD-EF-00-11-22"), true),
    ?assertEqual(estd_inet:is_macaddr("ab:cd:ef:00:11:22"), true),
    ?assertEqual(estd_inet:is_macaddr("ab-cd-ef-00-11-22"), true),
    ?assertEqual(estd_inet:is_macaddr("ab-cz-ef-00-110-22"), false),
    ?assertEqual(estd_inet:is_macaddr("08002b:010203"), true),
    ?assertEqual(estd_inet:is_macaddr("08002b-010203"), true),
    ?assertEqual(estd_inet:is_macaddr("0800.2b01.0203"), true).
