#!perl

use lib qw(./lib/ ./t/lib/);

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
