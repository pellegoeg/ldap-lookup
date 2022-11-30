LDAP_SERVER="ad-rodc01.aau.dk"
LDAP_PORT=3268

function ldap_plate() {
ldapsearch -P3 -N -h $LDAP_SERVER -p $LDAP_PORT -E pr=100/noprompt -b DC=aau,DC=dk "(&(objectCategory=User)(aauAAUID=$1))" mail aauUserStatus whenCreated whenChanged | grep "mail:\|aauUserStatus:\|whenCreated:\|whenChanged"
}
