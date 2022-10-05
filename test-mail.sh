{
	echo From: HHQ
	echo Subject: EMERGENCY TEST OF PACE COMMUNICATIONS
	echo This is an approved cyber effect
} > test.msg

cat test.msg | ssmtp ***@vtext.com
cat test.msg | ssmtp ***@tmomail.net
cat test.msg | ssmtp ***@txt.att.net
