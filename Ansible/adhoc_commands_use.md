shell command:-
ansible all -m shell -a "uptime"
ansible all -m shell -a "df -h"

i have used shell commands in ansible where ansible especially in cases where ansible modules didnt offer the specific functionality 
i needed
i use shell module in both ad-hoc tasks and playbook for various purposes like service checks , temporary files operations, or intracting with legacy system.

The shell module is useful when we want more control, when we are working with non-standard tool, or when no module exist for task


sometimes we have created temporary files to hold logs 
modify configuration files for testing 
store output temporarily before processing them 
clean up junk and temporary files regularly


the shell module runs raw shell command on remote machines.
it gives flexibility to perform tasks that are not covered by standard ansible modules.


i have used shell modules for temporary file operations when i needed to store intermediate data ,process files or clean up after 
deployment steps.



