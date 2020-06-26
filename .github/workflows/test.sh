

TITLE=$(git log --oneline | head -n 1 | cut -d' ' -f2-)
BODY=$( echo "{
 'title': 'OOD PR $TITLE',
 'body': 'Create documentation for https://github.com/OSC/ondemand/commit/$GITHUB_SHA'
}" | tr \' \" )

echo $TITLE
echo $BODY
