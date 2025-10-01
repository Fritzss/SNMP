CURRENTPATH=$(pwd)
PATHSNMP="$CURRENTPATH/mik_snmp.yml"
echo "$PATHSNMP"
git clone https://github.com/prometheus/snmp_exporter.git
cd ./snmp_exporter/generator/
make generate mibs
./generator generate -m "$CURRENTPATH/mibs/" -g "$CURRENTPATH/generator.yml" -o "$PATHSNMP"
