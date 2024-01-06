package Handler::PingHandler;

sub apply {
  my ($class, $app) = @_;
  $app->routes->get('/', \&hello);
  $app->routes->get('/ping', \&ping);
}

sub hello {
    my ($c) = @_;
    $c->render(text => 'Hello World!');
}

sub ping {
    my ($c) = @_;
    $c->render(json => {message => 'perl Mojolicious'});
}

1;