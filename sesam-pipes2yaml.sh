 yq -pj '.transform' $1.json -oy >  $2.transform.yaml&&
 yq -pj '.transform =  "file"' $1.json -oy > $2.yaml 
