#!perl

use lib qw(./lib/ ./t/lib/);

use Test::More;
use Image::Seek;

eval "use Image::Magick";
if ( $@ ) {
  plan skip_all => 'GD::Image required for testing with images';
}
else {
  $img = Image::Magick->new(width => 1, height => 1);
  Image::Seek::add_image($img, 1);
  ok(1);

  $img = Image::Magick->new(width => 128, height => 128);
  Image::Seek::add_image($img, 1);
  ok(1);

  $img = Image::Magick->new(width => 128, height => 1);
  Image::Seek::add_image($img, 1);
  ok(1);
  $img = Image::Magick->new(width => 1, height => 128);
  Image::Seek::add_image($img, 1);
  ok(1);

  done_testing;
}
