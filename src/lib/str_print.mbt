///|
pub fn central_print(width : Int, str : String, p : Int, q : Int) -> String {
  let real_len = real_len(str)
  let offset = width * p / q - real_len / 2
  "\r"+mul_str(offset, " ") + str
}

///|
pub fn back_print(
  background : String,
  width : Int,
  str : String,
  p : Int,
  q : Int
) -> String {
  let mut res = ""
  let l = real_len(str)
  let offset = width * p / q - l / 2
  let front_str = central_print(width, str, p, q)
  // let offset_ = width - offset - l
  res = background +
    front_str +
    "\r" +
    str_slice(background, 0, count_trim(front_str)-1)
//  res = background +
  //  mul_str(max(real_len(background) - offset, 0), "\b") +
    //str
  res
}
pub fn max(a : Int, b : Int) -> Int {
  if a > b {
    a
  } else {
    b
  }
}
///|
pub fn count_trim(str : String) -> Int {
  let mut res = 0
  for i in 0..<str.length() {
    if str[i] == ' ' {
      res = res + 1
    }
  }
  res
}

///|
pub fn str_slice(str : String, start : Int, end : Int) -> String {
  let mut res = ""
  for i in start..<end {
    res = res + "\{str[i]}"
  }
  res
}

///|
pub fn real_len(str : String) -> Int {
  let mut real_len = 0
  for i in str {
    let code = i.to_int()
    if 0xFF01 <= code ||
      code <= 0xFF5E ||
      0x4E00 <= code ||
      code <= 0x9FFF ||
      0x3000 <= code ||
      code <= 0x303F {
      real_len = real_len + 2
    } else {
      real_len = real_len + 1
    }
  }
  real_len
}

///|
pub fn mul_str(times : Int, str : String) -> String {
  let mut res = ""
  for i = times; i > 0; i = i - 1 {
    res = res + str
  }
  res
}
