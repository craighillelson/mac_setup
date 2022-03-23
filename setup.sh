#!bin/bash

playbooks=(
           configure_os.yml
           install_apps.yml
           remove_all_items_from_dock.yml
           populate_dock.yml
           order_apps_in_the_dock.yml
           )

for playbook in "${playbooks[@]}"
do
   :
   ansible-playbook $playbook
done

echo "\n"restart your computer to lock in settings and then you\'re all set"\n"
