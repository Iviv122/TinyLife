str1="data:text/html;base64,"

str2=$(base64 compressed.html)

stringBase="$str1$str2"

echo "$stringBase" > base64.txt
qrencode -o qrcode.png -l L < base64.txt
