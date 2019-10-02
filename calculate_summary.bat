REM Script show summary size of CloudWatch logs ( for all log groups )
REM korolev-ia(@)yandex.ru
aws --profile default logs describe-log-groups | grep storedBytes | perl -ne "$_=~ s/\D//g; print \"$_\n\";"  | perl -lne "$x += $_; END { print $x; }"