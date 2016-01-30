val=$(pip list --outdated | cut -d " " -f 1)

package=' ' read -a packages <<< ${val}

echo ${packages[0]}

for i in "${packages[@]}"
do
    sudo pip install --upgrade "$i"
done
