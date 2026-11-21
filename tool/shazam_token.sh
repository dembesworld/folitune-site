#!/usr/bin/env bash
# Signs a ShazamKit / MusicKit developer token (JWT ES256) with the private
# key downloaded from the Apple developer portal (Certificates, Identifiers &
# Profiles → Keys → key with "Media Services (MusicKit, ShazamKit)" enabled).
#
#   tool/shazam_token.sh AuthKey_ABC123DEFG.p8 TEAM_ID ABC123DEFG [days]
#
# Prints the token (valid `days`, 180 max, default 180). Nothing is written
# to disk; the .p8 file never leaves your machine. Use it as:
#
#   flutter build apk --dart-define=SHAZAM_DEVELOPER_TOKEN="$(tool/shazam_token.sh key.p8 TEAM KID)"
set -euo pipefail

if [ $# -lt 3 ]; then
  sed -n '2,12p' "$0" >&2
  exit 64
fi
key="$1"; team="$2"; kid="$3"; days="${4:-180}"
[ -r "$key" ] || { echo "clé introuvable : $key" >&2; exit 66; }
[ "$days" -le 180 ] || { echo "Apple limite les jetons à 6 mois (180 jours max)" >&2; exit 65; }

b64url() { openssl base64 -A | tr '+/' '-_' | tr -d '='; }

header=$(printf '{"alg":"ES256","kid":"%s"}' "$kid" | b64url)
now=$(date +%s)
payload=$(printf '{"iss":"%s","iat":%d,"exp":%d}' "$team" "$now" $((now + days * 86400)) | b64url)

# openssl emits a DER (r, s) sequence; JOSE wants the raw 32-byte r and s.
der_hex=$(printf '%s.%s' "$header" "$payload" | openssl dgst -sha256 -sign "$key" | openssl asn1parse -inform DER | awk -F: '/INTEGER/ { print $4 }')
raw_hex=""
for int in $der_hex; do
  int=$(printf '%s' "$int" | sed 's/^00//')
  raw_hex="$raw_hex$(printf '%064s' "$int" | tr ' ' 0)"
done
signature=$(printf '%s' "$raw_hex" | xxd -r -p | b64url)

printf '%s.%s.%s\n' "$header" "$payload" "$signature"
