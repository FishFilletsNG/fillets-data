#!/bin/sh
# Checks all known dialogs (and status) 

printall=true
printmy=true

for i in $*
do
	case $i in
		--full)
			printmy=true
			printall=true
		;;
		--my)
			printmy=true
			printall=false
		;;
		--lang*)
			mylang=`echo $i | sed "s/--lang=//"`
		;;
		*)
			printf "\n\n"
			echo "Usage:    $0 [--full] [--my] [--lang=language]"
			echo "======"
			echo "Example:  $0 --full --lang=ru"
			echo "or        $0 --my --lang=ru"
			echo "or        $0 --lang=en"
			exit 0
		;;
	esac
done
nfixme=0
nloc=0
nalldirs=0

for file in script/*/dialogs.lua \
        script/share/stddialogs.lua \
        script/briefcase/demo_briefcase.lua \
        script/share/demo_intro.lua
    do
	if ./diacheck.lua "$file" 
	then

		diadir=`echo "$file" | sed "s/\/[^\/]*\.lua//"`
		printf "Dir $diadir\t"
		langs=`ls "$diadir"/*_??.lua | sed "s/.*_//g" | sed "s/\.lua//g" `
		findok=0
		for lg in $langs
		do
			if [ "$lg" = "en" ] # translate from en
			then
				nalldirs=`expr $nalldirs + 1`
				findok=`expr $findok + 1`
			fi

			
			if [ "$lg" = "$mylang" ]
			then
				findok=`expr $findok - 1`
				if $printmy 
				then
					printf "\033[31m$lg"
				else
					printf "."
				fi
				
				if [ "`cat $diadir/*_$lg.lua | grep FIXME`" ]
				then
					nfixme=`expr $nfixme + 1`
					if $printmy 
					then
						printf "(FIXME)"
					fi
				else
					nloc=`expr $nloc + 1`
				fi
				if $printmy 
				then
					printf " \033[0m"
				fi
			else
				if $printall
				then
					printf "$lg "
				fi
			fi
		done
		if $printmy 
		then
			if [ ! "$findok" -eq 0 ]
			then
				printf "\033[31m TRANSLATE NOT FIND!!! ($findok dialogs)\033[0m"
			fi
		fi

		printf "\n"

	else
		echo "File: $file broken"
		exit $?	    
	fi
done
nnoloc=`expr $nalldirs - $nfixme - $nloc`
echo "============"
if [ "$mylang" ]
then
	echo "Translate:       $nloc"
	echo "Fixme:           $nfixme"
	echo "Don't translate: $nnoloc"
fi
	echo "All dialogs:     $nalldirs"

