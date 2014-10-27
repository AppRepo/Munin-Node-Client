# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl Munin-Node-Client.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 2;
BEGIN { use_ok('Munin::Node::ClientOpera') };


my $node = bless { socket => undef }, 'Munin::Node::ClientOpera';

alarm 1;
$node->read_list();
ok(1, 'No infinite loop on read error');

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

