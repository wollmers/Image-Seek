package  # hide from PAUSE
  MyAny {

  sub new {
    my $class = shift;
    # uncoverable condition false
    bless @_ ? @_ > 1 ? {@_} : {%{$_[0]}} : {}, ref $class || $class;
  }

  1;
}
