
W="/home/rohan/Task3"
PR="$W/private_key.pem"
PU="$W/public_key.pem"
DATAFILE="$W/data.txt"
EN="$W/encrypted_data.enc"
DE="$W/decrypted_data.txt"
openssl genpkey -algorithm RSA -out "$PR"
openssl rsa -pubout -in "$PR" -out "$PU"

openssl rsautl -encrypt -pubin -inkey "$PU" -in "$DATAFILE" -out "$EN"
openssl rsautl -decrypt -inkey "$PR" -in "$EN" -out "$DE"

cat "$DE"
echo "Github repo: "
