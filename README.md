# Ansible Konfiguration für Freifunk Hamburg Hosts

## Vorraussetzungen

[Ansible][] muß auf dem Rechner installiert sein, von dem aus die Hosts
verwaltet werden sollen. Zu den Hosts ist SSH-Zugang mit sudo-Rechten
erforderlich.

[Ansible]: https://docs.ansible.com/ansible/

## Anwenden der Konfiguration auf alle Hosts

    ./site

Das Skript führt das Playbook `site.yml` aus. Zum Testen kann noch `-C`
angehängt werden.

## Ansible Convenience

Einschränken auf bestimmte Tags, z.B. `nginx`:

    ./site -t nginx

Einschränken auf bestimmte Hosts:

    ./site -l srv01
