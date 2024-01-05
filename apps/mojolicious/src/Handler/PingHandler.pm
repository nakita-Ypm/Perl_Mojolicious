package Handler::PingHandler;

sub apply {
  my ($class, $app) = @_;
  $app->routes->get('/', \&ping);
}

sub ping {
    my ($c) = @_;
    $c->render(json => {message => 'perl Mojolicious'});
}

1;