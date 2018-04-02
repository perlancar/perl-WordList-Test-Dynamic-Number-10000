package WordList::Test::Dynamic::Number::10000;

# DATE
# VERSION

use WordList;
our @ISA = qw(WordList);

our $DYNAMIC = 1;

sub each_word {
    my ($self, $code) = @_;

    for my $i (1..10_000) {
        my $word = sprintf "%05d", $i;
        my $res = $code->($word);
        last if defined $res && $res == -2;
    }
}

# STATS

1;
# ABSTRACT: 10 million numbers from "00001" to "10000"
