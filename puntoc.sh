sudo groupadd grupodevops
sudo groupadd grupodevelopers
sudo groupadd grupotesters
sudo groupadd grupodevops

sudo useradd -G grupodevops developer1
sudo -G grupodevelopers developer1

sudo useradd -G grupotesters tester1

sudo useradd -G grupodevops devops1
sudo -G grupodevelopers devops1

sudo useradd -G grupodevops devops2

cd Examenes-UTN/

sudo chown developer1:developer1 alumno_1/
sudo chown tester1:tester1 alumno_2/
sudo chown devops1:devops1 alumno_3/
sudo chown devops2:devops2 profesores/

sudo chmod 760 alumno_1/
sudo chmod 770 alumno_2/
sudo chmod 700 alumno_3/
sudo chmod 776 profesores/

su -c "whoami > Examenes-UTN/alumno_1/validar.txt" developer1
su -c "whoami > Examenes-UTN/alumno_2/validar.txt" tester1
su -c "whoami > Examenes-UTN/alumno_3/validar.txt" devops1
su -c "whoami > Examenes-UTN/profesores/validar.txt" devops2
