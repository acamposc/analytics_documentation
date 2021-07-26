#!/bin/bash

# sudo apt install libgconf-2-4 libatk1.0-0 libatk-bridge2.0-0 libgdk-pixbuf2.0-0 libgtk-3-0 libgbm-dev libnss3-dev libxss-dev
# yarn add @mermaid-js/mermaid-cli

#environment vars
. ./env.sh

echo "Welcome!"
echo ""
echo "Type one of the following:"
echo "- example and then check the output folder."
echo "- tag for tagging.mmd"
echo "- test for testing.mmd"
echo "- rep for report.mmd"
echo "- exit, to exit."

while :
do
	read INPUT_STRING
	case $INPUT_STRING in
		tag)
			$ROOT_FOLDER/node_modules/.bin/mmdc -i $PROJECT_ROOT_FOLDER/analytics_documentation/input/tagging.mmd -o ./output/tagging.png
			break
            ;;
		test)
			echo "File testing.mmd not yet available."
			;;
		rep)
			echo "File report.mmd not yet available."
			break
			;;
        example)
			$ROOT_FOLDER/node_modules/.bin/mmdc -i $PROJECT_ROOT_FOLDER/analytics_documentation/example.mmd -o ./output/image.png
			break
			;;
        exit)
            break
            ;;
        *)
            echo "That's not a process. Bye."
            break
            ;;
	esac
done
echo
echo "That's all folks!"