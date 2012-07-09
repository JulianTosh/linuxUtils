checkrestart() { lsof | grep 'DEL.*lib' | cut -f 1 -d ' ' | sort -u; }
