package App;

use Mojolicious::Lite -signatures;
use lib "./src/";

use aliased 'Handler::PingHandler';

sub init {
    my $app = app;
    apply_handlers($app);
    $app->start;
}

sub apply_handlers {
    my ($app) = @_;
    PingHandler->apply($app);
}

1;