# NAME

String::isComparable::WithNum - It's a test implementing between Str and Int 

# SYNOPSIS

    use String::isComparable::WithNum;
    my $str = String::isComparable::WithNum->new( value => 'strings' );

    say q|Succeeded in comparing with strings| if $str eq 'strings';            
    say q|Succeeded in comparing with strings| if $str == 100;
    say q|Succeeded in comparing with strings| if $str == 'strings';
              

# DESCRIPTION

[The all of the problem is this Issue](https://github.com/worthmine/String-isComparable-WithNum/issues/1)

# LICENSE

Copyright (C) worthmine.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

worthmine <worthmine@gmail.com>
