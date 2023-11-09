#/usr/bin/env bash

env | while IFS= read -r line;do
    value=${line#*=}
    name=${line%%=*}
    #echo "$name == $value"
    if [[ $name =~ ^BUILD.+$ ]];then
        echo "$name == $value"
    fi
    if [[ $name =~ ^TEAMCITY.+$ ]];then
        echo "$name == $value"
    fi
done

echo "UID == $UID"

cat $TEAMCITY_BUILD_PROPERTIES_FILE