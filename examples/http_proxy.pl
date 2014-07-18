#!/usr/bin/env perl
# 이 모듈과 HTTP::Proxy 모듈 설치후 이 스크립트 실행후
# 웹브라우저 proxy설정에서 서버 127.0.0.1 포트 8080 으로
# 설정하면 로컬 프락시를 통해서 우회가능함
use strict;
use warnings;
use LWP::Protocol::http_wtf_warning_or_kr;
use HTTP::Proxy;

my $proxy = HTTP::Proxy->new;
$proxy->port(8080); 
$proxy->start;
