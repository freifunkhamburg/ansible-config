# Ansible-Konfiguration für Freifunk Hamburg Server

## Vorraussetzungen

[Ansible][] muß auf dem Rechner installiert sein, von dem aus die Server
verwaltet werden sollen. Zu den Servern ist SSH-Zugang mit sudo-Rechten
erforderlich.

[ansible]: https://docs.ansible.com/ansible/

Abhängigkeiten installieren:

```bash
ansible-galaxy install -r requirements.yml
```

## Anwenden der Konfiguration

```bash
# Testen der Konfiguration
./site -C

# Anwenden der Konfiguration
./site

# Anwenden nur auf bestimmte Server
./site -l srv01,srv02

# Anwenden nur auf bestimmte Tags
./site -t basics,nginx
```
