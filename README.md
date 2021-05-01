# Ansible-Konfiguration für Freifunk Hamburg Server

## Vorraussetzungen

[Ansible][] muß auf dem Rechner installiert sein, von dem aus die Server
verwaltet werden sollen. Zu den Servern ist SSH-Zugang mit sudo-Rechten
erforderlich.

[ansible]: https://docs.ansible.com/ansible/latest/

## Anwenden der Konfiguration auf alle Server

    ./site

Das Skript führt das Playbook `site.yml` aus. Zum Testen kann `-C` angehängt
werden.

## Ansible Convenience

Einschränken auf bestimmte Tags, z.B. `nginx`:

    ./site -t nginx

Einschränken auf bestimmte Server:

    ./site -l srv01
