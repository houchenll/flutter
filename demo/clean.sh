function getdir() {
    for element in `ls $1`
    do
        dir_or_file=$1"/"$element
        if [ -d $dir_or_file ]
        then
            echo "==> delete trash in project "$dir_or_file
            
            dir_build=$dir_or_file"/build/"
            echo "delete dir "$dir_build
            rm -rf $dir_build

            dir_dart_tool=$dir_or_file"/.dart_tool/"
            echo "delete dir "$dir_dart_tool
            rm -rf $dir_dart_tool

            dir_idea=$dir_or_file"/.idea/"
            echo "delete dir "$dir_idea
            rm -rf $dir_idea

            dir_gradle=$dir_or_file"/android/.gradle/"
            echo "delete dir "$dir_gradle
            rm -rf $dir_gradle

            dir_ios=$dir_or_file"/ios/Flutter/"
            echo "delete dir "$dir_ios
            rm -rf $dir_ios
        fi
    done
}

root_dir="."
getdir $root_dir