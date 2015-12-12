#!perl

use lib qw(./lib/ ./t/lib/);

use Test::More;
use Image::Seek;
#use Test::Exception;

use MyAny;

eval "use Test::Exception";
if ( $@ ) {
  plan skip_all => 'Test::Exception required for testing croak';
}
else {
  $img = MyAny->new();
  ok($img);
  #Image::Seek::add_image($img, 1);
  throws_ok( sub { Image::Seek::add_image($img, 1); }, qr/know/,
    'unknow ok' );
  ok(1);
  done_testing;
}
