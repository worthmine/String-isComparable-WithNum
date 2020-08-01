use strict;
use warnings;
use Test::More 0.98 tests => 9;

use lib 'lib';

use_ok('String::isComparable::WithNum');    # 1
my $str = new_ok( 'String::isComparable::WithNum', [ value => 'strings' ] );    # 2

note 'where value is strings';
cmp_ok( $str, 'eq', '100', q|Succeeded in comparing with strings| );            # 3
cmp_ok( $str, '==', 100,   q|Succeeded in comparing with Int| );                # 4
cmp_ok( $str, '==', '100', q|Succeeded in comparing with strings by '=='| );    # 5

$str = String::isComparable::WithNum->new( value => '100' );                    # 6

note 'where value is INT';
cmp_ok( $str, 'eq', '100', q|Succeeded in comparing with strings| );            # 7
cmp_ok( $str, '==', 100,   q|Succeeded in comparing with Int| );                # 8
cmp_ok( $str, '==', '100', q|Succeeded in comparing with strings by '=='| );    # 9

done_testing;

