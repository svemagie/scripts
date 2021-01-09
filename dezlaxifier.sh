#!/bin/bash
#
# script to clean local hubzilla instance from known russian spammer zlax
#
#######################
# Database connection #
#######################

declare DB_NAME="DBNAME"
declare DB_HOST="localhost"
declare DB_PORT="3306"
declare DB_USER="DBUSER"
declare DB_PASS="PASSWORD"

###################
# Array of Zlaxes #
###################

declare -a SPAMMERS=(
	
	"vm66%@diaspora.ruhrmail.de"
	"ivan_exlax@pod.dapor.net"
	"zlax@%"
	"zlaxy@%"
	"zlaxyizlax@%"
	"zlax%@d.consumium.org"
	"vm66%@mondiaspora.net"
	"vm66%@diaspora.club"
	"vm66%@nerdpol.ch"
	"vm66%@diasp.org"
	"florida_ted@pod.dapor.net"	
	"jlumpkins@pod.dapor.net"
	"jlumpkins@podbay.net"
	"hackbyte@diaspora.club"
	"owlmagic@pod.tchncs.de"
        "kennychaffin@pod.tchncs.de"
        "mrd_ill_be_back@pod.tchncs.de"
	)

####################################
# Extermination of Zlaxes' actions #
####################################

for SPAM in "${SPAMMERS[@]}"
do
	echo "Preparing to remove items from handle $SPAM ..."
	mysql --user=$DB_USER \
		--password=$DB_PASS \
		--database=$DB_NAME \
		--host=$DB_HOST \
		--port=$DB_PORT \
		--silent \
		-e "UPDATE item SET item_pending_remove = '1' WHERE author_xchan LIKE '$SPAM'; SELECT ROW_COUNT()"
	#TODO: Add handle to serialized array in config where cat="system" and k="blacklisted_channels"
done

#################################################
# Finally remove all marked items from database #
#################################################

echo "All items have been marked for deletion and won't be visible anymore. If you wish to delete them permamently, type YES."
read REMOVAL

if [ "$REMOVAL" = "YES" ]; then
	mysql --user=$DB_USER \
		--password=$DB_PASS \
		--database=$DB_NAME \
		--host=$DB_HOST \
		--port=$DB_PORT \
		--silent \
		-e "DELETE from item WHERE item_pending_remove = '1'; SELECT ROW_COUNT()"
fi

########################
# Remove notifications #
########################

for SPAM in "${SPAMMERS[@]}"
do
	POD=$(echo -e "$SPAM" | cut -f2 -d"@")
	USR=$(echo -e "$SPAM" | cut -f1 -d"@")
	URL="htt%://$POD/u/$USR"
        echo "Removing notifications from handle $SPAM ..."
        mysql --user=$DB_USER \
                --password=$DB_PASS \
                --database=$DB_NAME \
                --host=$DB_HOST \
                --port=$DB_PORT \
                --silent \
                -e "DELETE FROM notify WHERE url LIKE '$URL'; SELECT ROW_COUNT()"

done
