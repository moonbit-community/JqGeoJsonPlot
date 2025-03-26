///|
pub fn str_to_int(str : String) -> Int {
  let mut res = 0
  for i in str {
    let mut t = 0
    t = match i {
      '1' => 1
      '2' => 2
      '3' => 3
      '4' => 4
      '5' => 5
      '6' => 6
      '7' => 7
      '8' => 8
      '0' => 0
      _ => continue
    }
    res = res * 10 + t
  }
  res
}

///|
pub fn str_to_float(str : String) -> Float {
  let mut res : Float = 0
  // let mut res_ : Float = 0
  let mut pos = 0
  for a, i in str {
    if i != '.' {
      let mut t : Float = 0
      t = match i {
        '1' => 1
        '2' => 2
        '3' => 3
        '4' => 4
        '5' => 5
        '6' => 6
        '7' => 7
        '8' => 8
        '9' => 9
        '0' => 0
        _ => continue
      }
      res = res * 10 + t
    }
    if i == '.' {
      pos = a
      // break
    }
  }
  for i in (pos + 1)..<str.length() {
    res = res / 10
  }
  res
}

///|
pub fn str_split(str : String, c : Char) -> Array[String] {
  let arr = []
  let mut mem_i = 0
  for i, u in str {
    if u == c {
      let mut t = ""
      for g in mem_i..<i {
        t = t + "\{str[g]}"
      }
      arr.push(t)
      mem_i = i + 1
      // println("截取位置:\{i}")
    }
  }
  arr
}

///|
pub fn str_split_(str : String, c : Char) -> Array[String] {
  let arr = []
  let mut mem_i = 0
  for i, u in str {
    if u == c || i == str.length() - 1 {
      let mut t = ""
      for g in mem_i..<i {
        t = t + "\{str[g]}"
      }
      arr.push(t)
      mem_i = i + 1
      // println("截取位置:\{i}")
    }
  }
  arr
}
