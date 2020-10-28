if [ -d "/jffs/dnsmasq" ]; then
	export MPDIR="/jffs/dnsmasq"
else
	export MPDIR="."
fi

cd "${MPDIR}"

curl -o mphosts https://raw.githubusercontent.com/leehung-net/adblock/master/mphosts
curl -o mpdomains https://raw.githubusercontent.com/leehung-net/adblock/master/mpdomains

killall -HUP dnsmasq