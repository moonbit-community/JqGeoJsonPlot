# moon build --target native

# 默认使用当前目录下第一个匹配 input.* 的文件
    default_file=$(ls ./china.* 2>/dev/null | head -n 1)
    # default_file="./china.json"

read -p "Enter the input_file path you want  " input_file 
input_file=${input_file:-"china.json"}
# 检查文件是否存在
if [ ! -f "$input_file" ]; then
    echo "Error: File '$input_file' does not exist."
    input_file="$default_file"  # 使用默认路径
    echo "We'll use the default path."
    echo "_______________________________________"
fi

# 获取当前终端的宽度
terminal_width=$(tput cols)
# 检查是否成功获取宽度
if [ -z "$terminal_width" ]; then
  echo "Couldn't get the terminal_width.Use default one."
  terminal_width = 100
fi
# 假设需要提取所有省份或城市的名称和人口
# data=$(jq -r '.features[] | "\(.properties.name) "' $input_file)
# data=$(jq -r '.features[] | "\(.properties.name) \(.properties.center) \(.geometry.coordinates)"' $input_file)
data=$(jq -r '.features[] | select(.properties.name != null) | "\(.properties.name);\(.properties.center);\(.geometry.coordinates);"' $input_file)
# data=$(jq -r '.features[] | select(.properties.name != null and .properties.center != null and .geometry.coordinates != null) | "\(.properties.name) \(.properties.center) \(.geometry.coordinates)"' $input_file)
# 将终端宽度和数据组合成一个参数列表
args="$terminal_width $data"
# 调用 main.exe 并传递参数
./target/native/release/build/main/main.exe $args

echo "-------------------------------------"
echo "Show Finish!"
#vim src/main/main.mbt
