Mutt Configuration
==================
This is my fairly usable mutt configuration for Gmail via IMAPS and SMTP.

To install, create .mutt/{cache/bodies/,certificates/,temp/} and touch
.mutt/cache/headers.  Furthermore, the files .mutt/{aliases,contacts,signature}
should be properly populated.

Change the fields "REAL NAME", "EMAIL.USER", and "GMAILPASSWORD" to reflect
you.

Though mutt can handle multiple accounts via account and folder hooks, it is a
PITA.  For something easier, I recommend multiple configuration files, sourced
by mutt -F.  Running multiple instances of mutt in tmux or another terminal
multiplexer works nicely.
