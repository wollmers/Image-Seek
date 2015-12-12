#!perl

use lib qw(./lib/ ./t/lib/);

use Test::More;
use Image::Seek;

eval "use Image::Magick";
if ( $@ ) {
  plan skip_all => 'GD::Image required for testing with images';
}
else {
  $img = Image::Magick->new(1, 1);
  Image::Seek::add_image($img, 1);
  ok(1);
  done_testing;
}
