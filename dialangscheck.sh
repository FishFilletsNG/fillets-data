#!/bin/sh
# Checks all known dialogs (and status) 

printall=true
printmy=true

usage()
{
			printf "\n\n"
			echo "Usage:    $0 [--full] [--my] [--lang=language]"
			echo "======"
			echo "Example:  $0 --full --lang=ru"
			echo "or        $0 --my --lang=ru"
			echo "or        $0 --lang=en"
}

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
      usage
      exit 0
		;;
	esac
done
nfixme=0
nloc=0
nalldirs=0

printtabs()
{
          strlen=`echo "$1 " | wc | awk '{print $3}'`
          #printf ">$strlen<"
          if [ $strlen -ge 20 ]
          then
            printf "$1 "
          else
            printf "$1\t "
          fi
}

for file in script/*/dialogs.lua \
        script/share/stddialogs.lua \
        script/briefcase/demo_briefcase.lua \
        script/share/demo_intro.lua
    do
#	if ./diacheck.lua "$file" 
	if true
	then

		diadir=`echo "$file" | sed "s/\/[^\/]*\.lua//"`
		printtabs "Dir $diadir\t"
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
          comment=`cat $diadir/*_$lg.lua | sed -n "1p" | sed "s/.*FIXME[., ]*\(.*\)/\1/g"`
					nfixme=`expr $nfixme + 1`
					if $printmy 
					then
						printf "($comment)"
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
		if [ "$mylang" ]
		then
			if [ "$findok" != 0 ]
			then
				printf "\033[31mTRANSLATE NOT FIND!!! ($findok dialogs)\033[0m"
			fi
		fi

		printf "\n"

	else
		echo "File: $file broken"
		exit $?	    
	fi
done
nnoloc=`expr "$nalldirs" - "$nfixme" - "$nloc"`
echo "============"
if [ "$mylang" ]
then
	echo "Translate:       $nloc"
	echo "Fixme:           $nfixme"
	echo "Don't translate: $nnoloc"
fi
echo "All dialogs:     $nalldirs"

###################
# FIXME stupid code 
if [ $printall = true ]
then
  if [ ! "$mylang" ]
  then
    usage
  fi
fi
