(#!/usr/bin)

input_file=$1
output_file="converted_$input_file"
sed 's/;/,/g' "$input_file" > "$output_file"
echo "Converted file created: $output_file"
