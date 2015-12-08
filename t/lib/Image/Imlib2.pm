package # hide from PAUSE
  Image::Imlib2 {

  sub new {
    my $class = shift;
    # uncoverable condition false
    bless @_ ? @_ > 1 ? {@_} : {%{$_[0]}} : {}, ref $class || $class;
  }

  sub create_scaled_image { shift; }

  sub query_pixel {
    return (20,20,20,1);
  }

  1;
}
