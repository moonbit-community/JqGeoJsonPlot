///|
struct cell {
  // 终端内
  c : Int
  r : Int
  // 地理盒子
  b : box
  // 点集个数与形状
  count : Int
  points : Array[(Float, Float)]
  // shape : String
  shape : Map[String, String]
  // fn poi_out(self) {
  //   println(mul_str(self.c," ")+self.shape)
  // }
} derive(Show)

///|
struct box {
  // box内
  mut u : Float
  mut d : Float
  mut l : Float
  mut r : Float
  mut cen : (Float, Float)
} derive(Show)

///|
struct Point {
  x : Float
  y : Float
  row : Int
  col : Int
}

///|
struct Capital {
  // mut 
  pos : Point
  name : String
}

///|
pub fn max_box(input : Array[(Float, Float)]) -> box {
  let b = box::{ u: 0.0, d: 0.0, l: 0.0, r: 0.0, cen: (0.0, 0.0) }
  let mut mem_u : Float = 0.0
  let mut mem_d : Float = 0.0
  let mut mem_l : Float = 0.0
  let mut mem_r : Float = 0.0
  for index, i in input {
    let x = i.0
    let y = i.1
    // 初始
    if index == 0 {
      mem_u = y
      mem_d = y
      mem_l = x
      mem_r = x
    }
    if y > mem_u {
      mem_u = y
    }
    if y < mem_d {
      mem_d = y
    }
    if x < mem_l {
      mem_l = x
    }
    if x > mem_r {
      mem_r = x
    }
  }
  b.u = mem_u
  b.d = mem_d
  b.l = mem_l
  b.r = mem_r
  b.cen = ((b.l + b.r) / 2, (b.u + b.d) / 2)
  b
}

///|
pub fn char_cells(
  caps : Map[String, (Float, Float)],
  terminal_width : Int,
  max_box : box,
  all_points : Array[(Float, Float)]
) -> Unit {
  let points : Array[(Float, Float)] = all_points
  // 列数
  let col = terminal_width
  // @lib.str_to_int(@sys.get_cli_args()[1])
  // 地理盒子
  let wid = max_box.r - max_box.l
  let hei = max_box.u - max_box.d
  // 比例
  let scale : Float = hei / wid
  // 行数
  let row : Int = (col.to_float() * scale / 2.0).to_int() + 1
  // 差分
  let dx = wid / col.to_float()
  let dy = hei / row.to_float()
  let mut record = 0
  // 点分区
  let new_points = []
  for p in all_points {
    let x = p.0 - max_box.l
    let y = p.1 - max_box.d
    let j = (col.to_float() * x / wid).to_int()
    let i = (row.to_float() * y / hei).to_int()
    let newp = Point::{ x: p.0, y: p.1, row: i, col: j }
    new_points.push(newp)
  }

  // 实验
  // let i = 50
  // let j = 50
  let mut empty_count : Int = 0
  let mut region = ""
  for i_ in 0..<row {
    let mut draw = ""
    let mut asign_draw = ""
    let mut asign_pos = 0
    let mut is_empty : Bool = true
    for j in 0..<col {
      let i = row - i_ - 1
      let b = box::{
        u: max_box.u - i.to_float() * dy,
        d: max_box.u - (i + 1).to_float() * dy,
        l: max_box.l + j.to_float() * dx,
        r: max_box.l + (j + 1).to_float() * dx,
        cen: (
          max_box.l + (j.to_float() + 0.5) * dx,
          max_box.u - (i.to_float() + 0.5) * dy,
        ),
      }
      let cell_points = []
      let mut count = 0
      let res = []
      let mem = {}
      for p in new_points {
        if p.row == i && p.col == j {
          cell_points.push((p.x, p.y))
          count = count + 1
        }
      }
      for name, poi in caps {
        let pos_col = (col.to_float() * (poi.0 - max_box.l) / wid).to_int()
        let pos_row = (row.to_float() * (poi.1 - max_box.d) / hei).to_int()
        if pos_col == j && pos_row == i {
          asign_draw = central_print(terminal_width, name, j, terminal_width)
          region = region + asign_draw + "\n"
          asign_pos = j
          // println(name)
          // println(central_print(terminal_width, name, j, terminal_width))
        }
      }
      // 尝试输出形状log
      // let shape_log = cell_contain_shape(cell_points, b, 1, 20, 1)

      // if shape_log.length() > 0 {
      //   println(shape_log)
      //   // draw = draw + char_switch(shape_log)
      // } else {
      //   draw = draw + " "
      // }
      // for c in new_capitals {
      //   if c.pos.row == i && c.pos.col == j {
      //     asign_pos = j
      //     asign_draw = c.name
      //   }
      // }
      if count > 0 {
        draw = draw + "●"
        is_empty = false
      } else {
        draw = draw + " "
      }
    }
    if is_empty {
      empty_count = empty_count + 1
    }
    if empty_count > 20 {
      break
    }
    // println("")
    // println(
    //   draw + asign_draw + "\r" + str_slice(draw, 0, count_trim(asign_draw)),
    // )
    println(
      back_print(draw, terminal_width, asign_draw, asign_pos, terminal_width),
    )
  }
  println(mul_str(terminal_width, "="))
  println(central_print(terminal_width, "行政区裸点对照", 1, 2))
  println(mul_str(3, "\n"))
  println(region)
  // println(1)
  // let shape = "$"
  // let shape = char_switch(shape_log)
  // 形状记录组
  // for i in 0..<row {
  //   let mut t = ""
  //   for j in 0..<col {
  //     record = record + 1
  //     if record % 2 == 0 {
  //       println(t)
  //     }
  //     // 临时单元点集
  //     let temp = []
  //     // 单元盒子
  //     let b = box::{
  //       u: max_box.u - i.to_float() * dy,
  //       d: max_box.u - (i + 1).to_float() * dy,
  //       l: max_box.l + j.to_float() * dx,
  //       r: max_box.l + (j + 1).to_float() * dx,
  //       cen: (
  //         max_box.l + (j.to_float() + 0.5) * dx,
  //         max_box.u - (i.to_float() + 0.5) * dy,
  //       ),
  //     }
  //     for id, p in points {
  //       if is_in_box(p.0, p.1, b) {
  //         let garbage = points.remove(id)
  //         temp.push(p)
  //       }
  //     }
  //     // 获取单元格形状
  //     let shape_log = cell_contain_shape(temp, b, 3, 4, 2.0)
  //     let shape = "$"
  //     // let shape = char_switch(shape_log)
  //     t = t + shape
  //     // temp.push([])

  //   }
  //   // println(t)
  // }
}

///|
pub fn cell_contain_shape(
  points : Array[(Float, Float)],
  b : box,
  p : Int,
  q : Int,
  scale : Float
) -> Array[(Int, Int)] {
  // let mut arr : Array[(String, String)] = []
  // let map : Map[String, String] = {}
  let res = []
  let mem = {}
  let col = 2
  let row = 4
  let wid = b.r - b.l
  let hei = b.u - b.d
  let new_points = []
  for p in points {
    let x = p.0 - b.l
    let y = p.1 - b.d
    let j = (col.to_float() * x / wid).to_int()
    let i = (row.to_float() * y / hei).to_int()
    let newp = Point::{ x: p.0, y: p.1, row: i, col: j }
    new_points.push(newp)
    // res.push((i + 1, j + 1))
  }
  for p in new_points {
    // if
  }
  // let arr_ : FixedArray[(String, String)] = FixedArray.from(arr)
  // Map::of(arr_)
  res
}

///|
pub fn is_grid_contain(
  least : Int,
  points : Array[(Float, Float)],
  grid : box,
  scale : Float
) -> Bool {
  let mut res : Bool = false
  let mut count : Int = 0
  // 考察范围
  let up : Float = grid.cen.1 + (grid.u - grid.d) * scale / 2.0
  let down : Float = grid.cen.1 - (grid.u - grid.d) * scale / 2.0
  let left : Float = grid.cen.0 - (grid.u - grid.d) * scale / 2.0
  let right : Float = grid.cen.0 + (grid.u - grid.d) * scale / 2.0
  // let c : (Float, Float) = grid.cen
  let new_box = box::{ u: up, d: down, l: left, r: right, cen: grid.cen }
  for p in points {
    if is_in_box(p.0, p.1, new_box) {
      count = count + 1
    }
  }
  res = count > least
  res
}

///|
pub fn is_in_box(x : Float, y : Float, b : box) -> Bool {
  let mut res : Bool = false
  if x >= b.l && x <= b.r && y >= b.d && y <= b.u {
    res = true
  }
  res
}
