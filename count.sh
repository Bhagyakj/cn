file_path="/home/student/cn/bhu.txt"
number_of_lines=$(wc --l < "$file_path")
number_of_words=$(wc --w < "$file_path")
echo "number of lines : $number_of_lines"
echo "number of words : $number_of_words"
