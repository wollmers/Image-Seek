#!perl

use lib qw(./lib/ ./t/lib/);

BEGIN {
  unless ($ENV{AUTHOR_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for author testing');
  }
}

use Test::More;
use Image::Seek;
use Test::Exception;

#use Image::Imlib2;

eval "use MyAny";
if ( $@ ) {
  plan skip_all => 'MyAny required for testing with images';
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


