cd
curl -s ifconfig.me
whoami
sudo grep $(whoami) /etc/shadow
echo "Mi IP Publica es: $(curl -s ifconfig.me)" > Filtro_Avanzado.txt
echo "Mi usuario es: $(whoami)" >> Filtro_Avanzado.txt
echo "El Hash de mi Usuario es: $(sudo grep $(whoami) /etc/shadow | cut -d: -f2)" >> Filtro_Avanzado.txt
cat Filtro_Avanzado.txt
