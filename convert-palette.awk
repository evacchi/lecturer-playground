/Name:/ {
  palettename = ""	
  for (i = 2; i < NF; i++) {
  	sub("[']", "", $i)
    palettename = palettename tolower($i) "-"; 
  }
  print "\\setparameter " palettename $NF ":"
}
FNR > 4 {
  colorname = ""	
  for (i = 4; i < NF; i++) {
  	sub("[']", "", $i)
    colorname = colorname tolower($i) "-"; 
  }
  colorname = colorname tolower($NF)
  printf ("  %-15s = \"%1.2f %1.2f %1.2f\"\n", colorname, $1/255, $2/255, $3/255)
}
END { printf "\n" }
