#!/usr/bin/perl -w
use strict;

# Version: 1.1
# Date:    2001.01.07
# Revised: 2004.04.06
# Author:  V. Alex Brennen <vab@cryptnet.net>
#          http://www.cryptnet.net/people/vab/
# Author:  Gerfried Fuchs <alfie@ist.org>
#          http://alfie.ist.org/alfie/
# License: Public Domain
# Description:
#          This script was written as part of the gpg keysigning
#          party howto.  It generates a checklist for individuals
#          participating in a keysigning party. The keysigning
#          howto lives at:
#               http://www.cryptnet.net/fdp/crypto/gpg-party.html

unless($ARGV[0])
{
        print "\nUsage: party-table.pl <keyring> > out_file.html\n";
        print "\nThe keyring should be the keyring where the public keys for the\n";
        print "party participants are stored.\n\n";

	exit;
}

my @fps = `gpg --fingerprint --no-default-keyring --no-options --with-colons --keyring $ARGV[0] | egrep '^(pub|fpr):'`;

print "<HTML><HEAD><TITLE>PGP Keysigning Party Keys</TITLE></HEAD>\n";
print "<BODY><TABLE BORDER=1>\n";
print "<TR><TH>Key ID</TH><TH>Owner</TH><TH>Fingerprint</TH>";
print "<TH>Size</TH><TH>Type</TH><TH>Key Info Matches?</TH><TH>Owner ID Matches?</TH></TR>\n";

while(my $line = shift(@fps))
{
        if($line =~ /^pub/)
	{
                my ($pub,$comptrust,$size,$type,$longid,$date,undef,
                    undef,$settrust,$owner,undef,undef,$flags,undef)
                      = split /:/, $line;
                my $id = substr($longid, 8);
                my ($fpr,undef,undef,undef,undef,undef,undef,undef,undef,$fingerprint)
                      = split /:/, shift(@fps);

                if($type eq '17')
		{
                        $type = 'DSA';
                }
		elsif($type eq '20')
		{
                        $type = 'El Gamal';
                }
		elsif($type eq '1')
		{
                        $type = 'RSA';
                }
                if(length($fingerprint) == 40)
		{
			for my $i (36,32,28,24,20,16,12,8,4)
			{
                                if($i != 20)
				{
					substr($fingerprint,$i,0,' ');
				}
				if($i == 20)
				{
					substr($fingerprint,$i,0,"\n");
				}
			}
                }
		elsif (length($fingerprint) == 32)
		{
                        for my $i (30,28,26,24,22,20,18,16,14,12,10,8,6,4,2)
			{
                                if($i != 16)
				{
					substr($fingerprint,$i,0,' ');
				}
				if($i == 16)
				{
					substr($fingerprint,$i,0,"\n");
				}
                        }
                }
		$owner =~ s/&/&amp;/;
		$owner =~ s/</&lt\;/;
                $owner =~ s/>/&gt\;/;

                print "<TR><TD><PRE>$id</PRE></TD><TD>$owner</TD>\n";
		print "<TD><PRE>$fingerprint</PRE></TD><TD>$size</TD>\n";
                print "<TD>$type</TD><TD>&nbsp;</TD><TD>&nbsp;</TD></TR>\n";
        }
}

print "</TABLE>\n";
print "</BODY></HTML>";
