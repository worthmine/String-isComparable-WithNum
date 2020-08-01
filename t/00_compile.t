use strict;
use warnings;
use Test::More 0.98 tests => 8;

use lib 'lib';

use_ok('String::isComparable::WithNum');    # 1
my $str = new_ok( 'String::isComparable::WithNum', [ value => 'strings' ] );    # 2

note q|where value is a 'strings'|;
cmp_ok( $str, 'eq', 'strings', q|Succeeded in comparing with strings| );            # 3
cmp_ok( $str, '==', 100,       q|Succeeded in comparing with Int| );                # 4
cmp_ok( $str, '==', 'strings', q|Succeeded in comparing with strings by '=='| );    # 5

$str = String::isComparable::WithNum->new( value => '100' );

note q|where value is an 'Int'|;
cmp_ok( $str, 'eq', '100', q|Succeeded in comparing with strings| );                # 6
cmp_ok( $str, '==', 100,   q|Succeeded in comparing with Int| );                    # 7
cmp_ok( $str, '==', '100', q|Succeeded in comparing with strings by '=='| );        # 8

done_testing;

