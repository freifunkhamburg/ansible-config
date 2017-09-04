# Ansible Konfiguration für Freifunk Hamburg Hosts

## Vorraussetzungen

[Ansible][] wird nicht auf den Hosts installiert, sondern muss auf dem jeweiligen
Rechner, von dem aus die Hosts verwaltet werden sollen installiert werden.

Ansible kann zusammen mit den benötigten Abhängigkeiten wie folgt installiert
werden:

    pip install -r requirements.txt

Unter NixOS kann alternativ über die default.nix eine nix-shell erzeugt werden:

    nix-shell

  [Ansible]: https://docs.ansible.com/ansible/

### SSH

Zur Konfiguration wird auf den Hosts jeweils ein Nutzer mit sudo-Rechten
benötigt. Für diesen muss ein SSH-Key hinterlegt sein.

## Übernehmen der Änderungen für alle Hosts

    ./site

Das Skript führt das Playbook `site.yml` mit dem Inventar `production` aus.

Zum Testen kann noch `-C` angehängt werden.

## Ansible Convenience

Einschränken auf bestimmte Tags, z.B. `nginx`:

    ./site -t nginx

Einschränken auf bestimmte Hosts:

    ./site -l srv03,srv04
