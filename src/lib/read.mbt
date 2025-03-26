///|
pub fn read_points_pair(str : String) -> Array[(Float, Float)] {
  let res = []
  let cut_pair = str_split(str, ',')
  let mut p : Float = 0
  for i, poi in cut_pair {
    // let mut scale : Float = 0.0
    if i % 2 == 1 {
      // scale = scale + str_to_int(poi).to_float()
      // 此处调整y纵值
      res.push((p, str_to_float(poi) * 10))
      // scale = 0.0
    } else {
      p = str_to_float(poi)
    }
  }
  res
}

///|
pub fn read_points_pair_(str : String) -> Array[(Float, Float)] {
  let res = []
  let cut_pair = str_split_(str, ',')
  let mut p : Float = 0
  for i, poi in cut_pair {
    // let mut scale : Float = 0.0
    if i % 2 == 1 {
      // scale = scale + str_to_int(poi).to_float()
      // 此处调整y纵值
      res.push((p, str_to_float(poi)))
      // scale = 0.0
    } else {
      p = str_to_float(poi)
    }
  }
  res
}
