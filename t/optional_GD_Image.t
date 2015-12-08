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

eval "use GD::Image";
if ( $@ ) {
  plan skip_all => 'GD::Image required for testing with images';
}
else {
  $img = GD::Image->new(1, 1);
  Image::Seek::add_image($img, 1);
  ok(1);
  done_testing;
}


