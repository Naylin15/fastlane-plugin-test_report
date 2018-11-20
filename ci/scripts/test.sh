
IS_PRERELEASE="$( cut -d '-' -f 2 <<< "$CIRCLE_BRANCH" )";

if [[ $CIRCLE_BRANCH != "$IS_PRERELEASE" ]]; then
PREFIX_PRERELEASE="$( cut -d '.' -f 1 <<< "$IS_PRERELEASE" )";
echo "if branch is not equal to rc"
echo "$PREFIX_RELEASE"
else

echo "Branch equals rc"

fi