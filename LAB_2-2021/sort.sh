#/bin/bash

echo "Pokrecem sortiranje..."

cd downloads

for FILE in *; do
  if [[ "${FILE}" =~ '_' ]]; then
    ime_predmeta=$( echo "${FILE}" | cut -d'_' -f1 )
    if [[ ! -d ../${ime_predmeta} ]]; then
      mkdir ../${ime_predmeta}
    fi
    mv "${FILE}" ../${ime_predmeta}
  else
    if [[ "${FILE}" =~ (.pdf)|(.epub)$ ]]; then
	    if [[ ! -d ../knjige ]]; then
	      mkdir ../knjige
	    fi
      mv "${FILE}" ../knjige
    elif [[ "${FILE}" =~ (.jpg)|(.jpeg)$ ]]; then
	    if [[ ! -d ../slike ]]; then
	      mkdir ../slike
	    fi
      mv "${FILE}" ../slike
    elif [[ "${FILE}" =~ .mp3$ ]]; then
	    if [[ ! -d ../muzika ]]; then
	      mkdir ../muzika
	    fi
      mv "${FILE}" ../muzika
    else
      if [[ ! -d ../razonoda ]]; then
        mkdir ../razonoda
      fi
      mv "${FILE}" ../razonoda
    fi
  fi
done
