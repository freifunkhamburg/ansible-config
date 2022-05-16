# Ansible-Konfiguration für Freifunk Hamburg Server

## Vorraussetzungen

[Ansible][] muß auf dem Rechner installiert sein, von dem aus die Server
verwaltet werden sollen. Zu den Servern ist SSH-Zugang mit sudo-Rechten
erforderlich.

[ansible]: https://docs.ansible.com/ansible/latest/

Abhängigkeiten installieren:

```bash
# Abhängigkeiten installieren mit Ansible Galaxy
ansible-galaxy install -r requirements-galaxy.yml

# Abhängigkeiten installieren mit GitHub
ansible-galaxy install -r requirements-github.yml
```

## Anwenden der Konfiguration auf alle Server

```bash
./site
```

Das Skript führt das Playbook `site.yml` aus. Zum Testen kann `-C` angehängt
werden.

## Ansible Convenience

Einschränken auf bestimmte Tags, z.B. `nginx`:

```bash
./site -t nginx
```

Einschränken auf bestimmte Server:

```bash
./site -l srv01
```
