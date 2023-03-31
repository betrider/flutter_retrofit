echo "Welcome to retrofit utilities:"
echo
echo "[1] build runner"
echo
read -p "Run: " selection

case $selection in

    1)
    echo "gql generate"
    flutter pub run build_runner build
    ;;

    *)
    echo "Unknown command!!"
    ;;

esac
