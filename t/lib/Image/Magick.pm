package # hide from PAUSE
  Image::Magick;

  sub new {
    my $class = shift;
    bless {}, $class;
  }

  sub Clone { shift; }

  sub Scale { shift; }

  sub GetPixel {
    return (20,20,20);
  }

  1;

