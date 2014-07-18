package LWP::Protocol::http_wtf_warning_or_kr;

use strict;
use warnings;

use parent 'LWP::Protocol::http';

our $VERSION = '0.001';

LWP::Protocol::implementor( http => __PACKAGE__ );

my $orig_code = \&Net::HTTP::Methods::format_request;
*LWP::Protocol::http::Socket::format_request = sub { "\r\n" . $orig_code->(@_) };


sub socket_class {
    my $self = shift;

    LWP::Protocol::http->socket_class(@_);
}

1;

__END__

=encoding utf-8

=head1 NAME

LWP::Protocol::http_wtf_warning_or_kr - warning.or.kr 안녕~

=head1 SYNOPSIS

  use LWP::Protocol::http_wtf_warning_or_kr;
  use LWP::Simple;
  print get('http://sex.com');

=head1 DESCRIPTION

LWP::Protocol::http_wtf_warning_or_kr 은 http://warning.or.kr 이 차단하는 웹싸이트에 접근할 수 있게 해줍니다. LWP계열 모듈을 쓰거나 내부적으로 LWP모듈을 쓰는 WWW::Mechanize 같은 모듈을 로딩하기 전에 이 모듈을 로딩만 해주면 적용됩니다.

=head1 AUTHOR

C.H. Kang E<lt>chahkang@gmail.comE<gt>

=head1 COPYRIGHT

Copyright 2014- C.H. Kang

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

=cut
