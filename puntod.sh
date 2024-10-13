cd
mkdir -p Estructura_Asimetrica/{correo,clientes}/{cartas{1..100},carteros{1..100}}
tree Estructura_Asimetrica

Punto E
grep MemTotal /proc/meminfo > Filtro_Basico.txt
sudo dmidecode -t chassis | grep Manufacturer >> Filtro_Basico.txt
cat Filtro_Basico.txt
