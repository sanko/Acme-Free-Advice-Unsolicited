use Test2::V0;
#
use lib '../lib', 'lib';
use Acme::Free::Advice::Unsolicited qw[:all];
#
imported_ok qw[advice all];
#
subtest 'random advice' => sub {
    is my $slip = advice(), hash {
        field advice => D();
        field id     => D();
        field source => D();
        end()
    }, 'advice() returns a random slip';
};
subtest 'specific advice' => sub {
    is my $slip = advice(224), hash {
        field advice => string q[You can be whatever you want, so be the person who ends meetings early.];
        field id     => number 224;
        field source => string q[https://kk.org/thetechnium/103-bits-of-advice-i-wish-i-had-known/];
        end;
    }, 'advice(1) returns a known slip';
    is advice(100000), U(), 'advice(100000) returns undef';
};
subtest 'gather all advice' => sub {
    is [ all() ], array {
        all_items hash {
            field advice => D();
            field id     => D();
            field source => D();
            end;
        };
        etc;
    }, 'all() returns a list of advice';
};
#
done_testing;
