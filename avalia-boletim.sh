#!/bin/bash

while IFS= read -r registro || [ -n "$registro" ]; do
	
  # Verifica se todas as linhas possume registros.	
  REGISTRO_VAZIO="$(echo -e "${registro}" | tr -d '[:space:]')"

  if [ -n "$REGISTRO_VAZIO" ];
	  then
	  
		#recupera-se apenas as notas conforme arquivo exemplo
		echo "$registro" |  awk '{split($registro,a,";"); array(a[4] a[5] a[6] a[7])}';	
		echo "Number of elements: ${#array[@]}"
  fi
  
done < boletim.txt