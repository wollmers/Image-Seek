package # hide from PAUSE
  Image::Magick;

  sub new {
    my $class = shift;
    my $options = {@_};
    bless $options, $class;
  }

  sub Clone { shift; }

  sub Scale { shift; }

  sub Get {
    my $self = shift;
    return ($self->{height},$self->{width});
  }

  sub GetPixels {
    return (20 x 128);
  }

  1;

