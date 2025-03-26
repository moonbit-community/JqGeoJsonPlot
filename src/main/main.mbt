///|
fn main {
  // 命令行解析支持
  read()
  // 获取信息
  let mut width = 0
  width = @lib.str_to_int(@sys.get_cli_args()[1])
  println(@lib.central_print(width, "我们终端的宽度是:\{width}", 1, 2))
  // 输出环境变量
  let mut count = 0
  let mut mem_i = ""
  println(
    @lib.central_print(width, "环境变量", 3, 4) +
    @lib.central_print(width, "环境变量", 1, 4),
  )
  for i, a in @sys.get_env_vars() {
    if a == "" {
      break
    }
    count = count + 1
    if count % 2 != 0 {
      mem_i = i
    } else {
      println("var\{count-1}:\{mem_i}\tvar\{count}:\{i}")
    }
  }
}

///|
fn read() -> Unit {
  try {
    println("Read things.")
    let args = @sys.get_cli_args()
    let mut points = []
    let capitals : Map[String, (Float, Float)] = {}
    for id, arg in args {
      if id != 0 && id != 1 {
        // 检查
        // println(arg + "\n")
        // println(id)
        let inform = @lib.str_split(arg, ';') // 分地点属性
        // let new_inf = @lib.str_split_(arg, ';')
        // println(new_inf)
        // inform中，0是地名，1是中心点，2是点集合
        points = [..points, ..@lib.read_points_pair(inform[2])]
        // println(@lib.read_points_pair(inform[1]))
        if @lib.read_points_pair_(inform[1]).length() != 0 {
          capitals[inform[0]] = @lib.read_points_pair_(inform[1])[0]
        }
        // println(inform[0])
        // println(@lib.read_points_pair(inform[1]))
      }
    }
    // println(capitals)
    // 边界盒
    let box = @lib.max_box(points)
    // println(box)
    // 读字符单元格
    @lib.char_cells(
      capitals,
      @lib.str_to_int(@sys.get_cli_args()[1]),
      box,
      points,
    )
    if args.length() == 0 {
      println("There is no thing.")
      fail!("nothing")
      // let width = @lib.str_to_int(@sys.get_cli_args()[1])
      // let slic = @lib.central_print(width, @lib.mul_str(width / 2, "="), 3, 4)
      // println(slic)
      // println(@lib.mul_str(width / 2, "="))
    }
  } catch {
    Failure(error_message) =>
      println("Some thing wrong.\nDetails in below\n" + error_message)
  }
}
