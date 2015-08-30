# Ansible Konfiguration für Freifunk Hamburg Hosts

## Vorraussetzungen

### Ansible

Ansible wird nicht auf den Hosts installiert, sondern muss auf dem jeweiligen
Rechner, von dem aus die Hosts verwaltet werden sollen installiert werden.

####python netaddr lib
Pythonic manipulation of IPv4, IPv6, CIDR, EUI and MAC network addresses

    pip install netaddr
### SSH

Zur Konfiguration wird auf den Hosts jeweils ein Nutzer mit sudo-Rechten
benötigt. Für diesen muss ein SSH-Key hinterlegt sein.

## Übernehmen der Änderungen für alle Hosts

    ansible-playbook site.yml -i production --sudo --ask-sudo-pass

## Ansible Convenience

Einschränken auf bestimmte Tags, z. B. `nginx`:

    ansible-playbook site.yml -i production --sudo --ask-sudo-pass --tags nginx
    
