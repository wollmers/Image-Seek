#!perl

use lib qw(./lib/ ./t/lib/);

use Test::More;
use Image::Seek;

eval "use Imager";
if ( $@ ) {
  plan skip_all => 'Imager required for testing with images';
}
else {
  $img = Imager->new(xsize => 1, ysize => 1);
  Image::Seek::add_image($img, 1);
  ok(1);
  done_testing;
}
