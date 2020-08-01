# NAME

String::isComparable::WithNum - It's a test implement to
**ignore** the difference between `<=>` and `cmp` 

# SYNOPSIS

    use String::isComparable::WithNum;
    my $str = String::isComparable::WithNum->new( value => 'strings' );

    say q|Succeeded in comparing with strings by 'eq'| if $str eq 'strings';            
    say q|Succeeded in comparing with Int by 'eq'| if $str eq 100;            
    say q|Succeeded in comparing with Int by '=='|     if $str == 100;
    say q|Succeeded in comparing with strings by '=='| if $str == 'strings';
              

# DESCRIPTION

I have solved The Issue[#1](https://github.com/worthmine/String-isComparable-WithNum/issues/1)

# LICENSE

Copyright (C) worthmine.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

worthmine <worthmine@gmail.com>
