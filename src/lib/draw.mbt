///|
pub fn char_switch(occupy : Array[(Int, Int)]) -> String {
  let mut c = " "
  if parr_comp(occupy, [(1, 1)]) {
    c = "⠁"
  }
  if parr_comp(occupy, [(1, 2)]) {
    c = "⠂"
  }
  if parr_comp(occupy, [(1, 1), (1, 2)]) {
    c = "⠃"
  }
  if parr_comp(occupy, [(1, 3)]) {
    c = "⠄"
  }
  if parr_comp(occupy, [(1, 1), (1, 3)]) {
    c = "⠅"
  }
  if parr_comp(occupy, [(1, 2), (1, 3)]) {
    c = "⠆"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3)]) {
    c = "⠇"
  }
  if parr_comp(occupy, [(2, 1)]) {
    c = "⠈"
  }
  if parr_comp(occupy, [(1, 1), (2, 1)]) {
    c = "⠉"
  }
  if parr_comp(occupy, [(1, 2), (2, 1)]) {
    c = "⠊"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (2, 1)]) {
    c = "⠋"
  }
  if parr_comp(occupy, [(1, 3), (2, 1)]) {
    c = "⠌"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (2, 1)]) {
    c = "⠍"
  }
  if parr_comp(occupy, [(1, 2), (1, 3), (2, 1)]) {
    c = "⠎"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3), (2, 1)]) {
    c = "⠏"
  }
  if parr_comp(occupy, [(2, 2)]) {
    c = "⠐"
  }
  if parr_comp(occupy, [(1, 1), (2, 2)]) {
    c = "⠑"
  }
  if parr_comp(occupy, [(1, 2), (2, 2)]) {
    c = "⠒"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (2, 2)]) {
    c = "⠓"
  }
  if parr_comp(occupy, [(1, 3), (2, 2)]) {
    c = "⠔"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (2, 2)]) {
    c = "⠕"
  }
  if parr_comp(occupy, [(1, 2), (1, 3), (2, 2)]) {
    c = "⠖"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3), (2, 2)]) {
    c = "⠗"
  }
  if parr_comp(occupy, [(2, 1), (2, 2)]) {
    c = "⠘"
  }
  if parr_comp(occupy, [(1, 1), (2, 1), (2, 2)]) {
    c = "⠙"
  }
  if parr_comp(occupy, [(1, 2), (2, 1), (2, 2)]) {
    c = "⠚"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (2, 1), (2, 2)]) {
    c = "⠛"
  }
  if parr_comp(occupy, [(1, 3), (2, 1), (2, 2)]) {
    c = "⠜"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (2, 1), (2, 2)]) {
    c = "⠝"
  }
  if parr_comp(occupy, [(1, 2), (1, 3), (2, 1), (2, 2)]) {
    c = "⠞"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3), (2, 1), (2, 2)]) {
    c = "⠟"
  }
  if parr_comp(occupy, [(2, 3)]) {
    c = "⠠"
  }
  if parr_comp(occupy, [(1, 1), (2, 3)]) {
    c = "⠡"
  }
  if parr_comp(occupy, [(1, 2), (2, 3)]) {
    c = "⠢"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (2, 3)]) {
    c = "⠣"
  }
  if parr_comp(occupy, [(1, 3), (2, 3)]) {
    c = "⠤"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (2, 3)]) {
    c = "⠥"
  }
  if parr_comp(occupy, [(1, 2), (1, 3), (2, 3)]) {
    c = "⠦"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3), (2, 3)]) {
    c = "⠧"
  }
  if parr_comp(occupy, [(2, 1), (2, 3)]) {
    c = "⠨"
  }
  if parr_comp(occupy, [(1, 1), (2, 1), (2, 3)]) {
    c = "⠩"
  }
  if parr_comp(occupy, [(1, 2), (2, 1), (2, 3)]) {
    c = "⠪"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (2, 1), (2, 3)]) {
    c = "⠫"
  }
  if parr_comp(occupy, [(1, 3), (2, 1), (2, 3)]) {
    c = "⠬"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (2, 1), (2, 3)]) {
    c = "⠭"
  }
  if parr_comp(occupy, [(1, 2), (1, 3), (2, 1), (2, 3)]) {
    c = "⠮"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3), (2, 1), (2, 3)]) {
    c = "⠯"
  }
  if parr_comp(occupy, [(2, 2), (2, 3)]) {
    c = "⠰"
  }
  if parr_comp(occupy, [(1, 1), (2, 2), (2, 3)]) {
    c = "⠱"
  }
  if parr_comp(occupy, [(1, 2), (2, 2), (2, 3)]) {
    c = "⠲"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (2, 2), (2, 3)]) {
    c = "⠳"
  }
  if parr_comp(occupy, [(1, 3), (2, 2), (2, 3)]) {
    c = "⠴"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (2, 2), (2, 3)]) {
    c = "⠵"
  }
  if parr_comp(occupy, [(1, 2), (1, 3), (2, 2), (2, 3)]) {
    c = "⠶"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3), (2, 2), (2, 3)]) {
    c = "⠷"
  }
  if parr_comp(occupy, [(2, 1), (2, 2), (2, 3)]) {
    c = "⠸"
  }
  if parr_comp(occupy, [(1, 1), (2, 2), (2, 3), (2, 1)]) {
    c = "⠹"
  }
  if parr_comp(occupy, [(1, 2), (2, 1), (2, 2), (2, 3)]) {
    c = "⠺"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (2, 1), (2, 2), (2, 3)]) {
    c = "⠻"
  }
  if parr_comp(occupy, [(1, 3), (2, 1), (2, 2), (2, 3)]) {
    c = "⠼"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (2, 1), (2, 2), (2, 3)]) {
    c = "⠽"
  }
  if parr_comp(occupy, [(1, 2), (1, 3), (2, 1), (2, 2), (2, 3)]) {
    c = "⠾"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3), (2, 1), (2, 2), (2, 3)]) {
    c = "⠿"
  }
  if parr_comp(occupy, [(1, 4)]) {
    c = "⡀"
  }
  if parr_comp(occupy, [(1, 1), (1, 4)]) {
    c = "⡁"
  }
  if parr_comp(occupy, [(1, 2), (1, 4)]) {
    c = "⡂"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 4)]) {
    c = "⡃"
  }
  if parr_comp(occupy, [(1, 3), (1, 4)]) {
    c = "⡄"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (1, 4)]) {
    c = "⡅"
  }
  if parr_comp(occupy, [(1, 2), (1, 3), (1, 4)]) {
    c = "⡆"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3), (1, 4)]) {
    c = "⡇"
  }
  if parr_comp(occupy, [(1, 4), (2, 1)]) {
    c = "⡈"
  }
  if parr_comp(occupy, [(1, 1), (1, 4), (2, 1)]) {
    c = "⡉"
  }
  if parr_comp(occupy, [(1, 2), (1, 4), (2, 1)]) {
    c = "⡊"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 4), (2, 1)]) {
    c = "⡋"
  }
  if parr_comp(occupy, [(1, 3), (1, 4), (2, 1)]) {
    c = "⡌"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (1, 4), (2, 1)]) {
    c = "⡍"
  }
  if parr_comp(occupy, [(1, 2), (1, 2), (1, 3), (2, 1)]) {
    c = "⡎"
  }
  if parr_comp(occupy, [(1, 2), (1, 2), (1, 3), (1, 4), (2, 1)]) {
    c = "⡏"
  }
  if parr_comp(occupy, [(1, 4), (2, 2)]) {
    c = "⡐"
  }
  if parr_comp(occupy, [(1, 1), (1, 4), (2, 2)]) {
    c = "⡑"
  }
  if parr_comp(occupy, [(1, 2), (2, 2), (1, 4)]) {
    c = "⡒"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 4), (2, 2)]) {
    c = "⡓"
  }
  if parr_comp(occupy, [(1, 3), (1, 4), (2, 2)]) {
    c = "⡔"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (1, 4), (2, 2)]) {
    c = "⡕"
  }
  if parr_comp(occupy, [(1, 2), (1, 3), (1, 4), (2, 2)]) {
    c = "⡖"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3), (1, 4), (2, 2)]) {
    c = "⡗"
  }
  if parr_comp(occupy, [(1, 4), (2, 1), (2, 2)]) {
    c = "⡘"
  }
  if parr_comp(occupy, [(1, 1), (1, 4), (2, 1), (2, 2)]) {
    c = "⡙"
  }
  if parr_comp(occupy, [(1, 2), (1, 4), (2, 1), (2, 2)]) {
    c = "⡚"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 4), (2, 1), (2, 2)]) {
    c = "⡛"
  }
  if parr_comp(occupy, [(1, 3), (1, 4), (2, 1), (2, 2)]) {
    c = "⡜"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (1, 4), (2, 1), (2, 2)]) {
    c = "⡝"
  }
  if parr_comp(occupy, [(1, 2), (1, 3), (1, 4), (2, 1), (2, 2)]) {
    c = "⡞"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3), (1, 4), (2, 1), (2, 2)]) {
    c = "⡟"
  }
  if parr_comp(occupy, [(1, 4), (2, 3)]) {
    c = "⡠"
  }
  if parr_comp(occupy, [(1, 1), (1, 4), (2, 3)]) {
    c = "⡡"
  }
  if parr_comp(occupy, [(1, 2), (1, 4), (2, 3)]) {
    c = "⡢"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 4), (2, 3)]) {
    c = "⡣"
  }
  if parr_comp(occupy, [(1, 3), (1, 4), (2, 3)]) {
    c = "⡤"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (1, 4), (2, 3)]) {
    c = "⡥"
  }
  if parr_comp(occupy, [(1, 2), (1, 3), (1, 4), (2, 3)]) {
    c = "⡦"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3), (1, 4), (2, 3)]) {
    c = "⡧"
  }
  if parr_comp(occupy, [(1, 4), (2, 1), (2, 3)]) {
    c = "⡨"
  }
  if parr_comp(occupy, [(1, 1), (1, 4), (2, 1), (2, 3)]) {
    c = "⡩"
  }
  if parr_comp(occupy, [(1, 2), (1, 4), (2, 1), (2, 3)]) {
    c = "⡪"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 4), (2, 1), (2, 3)]) {
    c = "⡫"
  }
  if parr_comp(occupy, [(1, 3), (1, 4), (2, 1), (2, 3)]) {
    c = "⡬"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (1, 4), (2, 1), (2, 3)]) {
    c = "⡭"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3), (2, 1), (2, 3)]) {
    c = "⡮"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3), (1, 4), (2, 1), (2, 3)]) {
    c = "⡯"
  }
  if parr_comp(occupy, [(1, 4), (2, 2), (2, 3)]) {
    c = "⡰"
  }
  if parr_comp(occupy, [(1, 1), (1, 4), (2, 2), (2, 3)]) {
    c = "⡱"
  }
  if parr_comp(occupy, [(1, 2), (1, 4), (2, 2), (2, 3)]) {
    c = "⡲"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 4), (2, 2), (2, 3)]) {
    c = "⡳"
  }
  if parr_comp(occupy, [(1, 3), (1, 4), (2, 2), (2, 3)]) {
    c = "⡴"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (1, 4), (2, 2), (2, 3)]) {
    c = "⡵"
  }
  if parr_comp(occupy, [(1, 2), (1, 3), (1, 4), (2, 2), (2, 3)]) {
    c = "⡶"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3), (1, 4), (2, 2), (2, 3)]) {
    c = "⡷"
  }
  if parr_comp(occupy, [(1, 4), (2, 1), (2, 2), (2, 3)]) {
    c = "⡸"
  }
  if parr_comp(occupy, [(1, 1), (1, 4), (2, 1), (2, 2), (2, 3)]) {
    c = "⡹"
  }
  if parr_comp(occupy, [(1, 2), (1, 4), (2, 1), (2, 2), (2, 3)]) {
    c = "⡺"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 4), (2, 1), (2, 2), (2, 3)]) {
    c = "⡻"
  }
  if parr_comp(occupy, [(1, 3), (1, 4), (2, 1), (2, 2), (2, 3)]) {
    c = "⡼"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (1, 4), (2, 1), (2, 2), (2, 3)]) {
    c = "⡽"
  }
  if parr_comp(occupy, [(1, 2), (1, 3), (1, 4), (2, 1), (2, 2), (2, 3)]) {
    c = "⡾"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3), (1, 4), (2, 1), (2, 2), (2, 3)]) {
    c = "⡿"
  }
  if parr_comp(occupy, [(2, 4)]) {
    c = "⢀"
  }
  if parr_comp(occupy, [(1, 1), (2, 4)]) {
    c = "⢁"
  }
  if parr_comp(occupy, [(1, 2), (2, 4)]) {
    c = "⢂"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (2, 4)]) {
    c = "⢃"
  }
  if parr_comp(occupy, [(1, 3), (2, 4)]) {
    c = "⢄"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (2, 4)]) {
    c = "⢅"
  }
  if parr_comp(occupy, [(1, 2), (1, 3), (2, 4)]) {
    c = "⢆"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3), (2, 4)]) {
    c = "⢇"
  }
  if parr_comp(occupy, [(2, 1), (2, 4)]) {
    c = "⢈"
  }
  if parr_comp(occupy, [(1, 1), (2, 1), (2, 4)]) {
    c = "⢉"
  }
  if parr_comp(occupy, [(1, 2), (2, 1), (2, 4)]) {
    c = "⢊"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (2, 1), (2, 4)]) {
    c = "⢋"
  }
  if parr_comp(occupy, [(1, 3), (2, 1), (2, 4)]) {
    c = "⢌"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (2, 1), (2, 4)]) {
    c = "⢍"
  }
  if parr_comp(occupy, [(1, 2), (1, 3), (2, 1), (2, 4)]) {
    c = "⢎"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3), (2, 1), (2, 4)]) {
    c = "⢏"
  }
  if parr_comp(occupy, [(2, 2), (2, 4)]) {
    c = "⢐"
  }
  if parr_comp(occupy, [(1, 1), (2, 2), (2, 4)]) {
    c = "⢑"
  }
  if parr_comp(occupy, [(1, 2), (2, 2), (2, 4)]) {
    c = "⢒"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (2, 2), (2, 4)]) {
    c = "⢓"
  }
  if parr_comp(occupy, [(1, 3), (2, 2), (2, 4)]) {
    c = "⢔"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (2, 2), (2, 4)]) {
    c = "⢕"
  }
  if parr_comp(occupy, [(1, 2), (1, 3), (2, 2), (2, 4)]) {
    c = "⢖"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3), (2, 2), (2, 4)]) {
    c = "⢗"
  }
  if parr_comp(occupy, [(2, 1), (2, 2), (2, 4)]) {
    c = "⢘"
  }
  if parr_comp(occupy, [(1, 1), (2, 1), (2, 2), (2, 4)]) {
    c = "⢙"
  }
  if parr_comp(occupy, [(1, 2), (2, 1), (2, 2), (2, 4)]) {
    c = "⢚"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (2, 1), (2, 2), (2, 4)]) {
    c = "⢛"
  }
  if parr_comp(occupy, [(1, 3), (2, 1), (2, 2), (2, 4)]) {
    c = "⢜"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (2, 1), (2, 2), (2, 4)]) {
    c = "⢝"
  }
  if parr_comp(occupy, [(1, 2), (1, 3), (2, 1), (2, 2), (2, 4)]) {
    c = "⢞"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3), (2, 1), (2, 2), (2, 4)]) {
    c = "⢟"
  }
  if parr_comp(occupy, [(2, 3), (2, 4)]) {
    c = "⢠"
  }
  if parr_comp(occupy, [(1, 1), (2, 3), (2, 4)]) {
    c = "⢡"
  }
  if parr_comp(occupy, [(1, 2), (2, 3), (2, 4)]) {
    c = "⢢"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (2, 3), (2, 4)]) {
    c = "⢣"
  }
  if parr_comp(occupy, [(1, 3), (2, 3), (2, 4)]) {
    c = "⢤"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (2, 3), (2, 4)]) {
    c = "⢥"
  }
  if parr_comp(occupy, [(1, 2), (1, 3), (2, 3), (2, 4)]) {
    c = "⢦"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3), (2, 3), (2, 4)]) {
    c = "⢧"
  }
  if parr_comp(occupy, [(2, 1), (2, 3), (2, 4)]) {
    c = "⢨"
  }
  if parr_comp(occupy, [(1, 1), (2, 1), (2, 3), (2, 4)]) {
    c = "⢩"
  }
  if parr_comp(occupy, [(1, 2), (2, 1), (2, 3), (2, 4)]) {
    c = "⢪"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (2, 1), (2, 3), (2, 4)]) {
    c = "⢫"
  }
  if parr_comp(occupy, [(1, 3), (2, 1), (2, 3), (2, 4)]) {
    c = "⢬"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (2, 1), (2, 3), (2, 4)]) {
    c = "⢭"
  }
  if parr_comp(occupy, [(1, 2), (1, 3), (2, 1), (2, 3), (2, 4)]) {
    c = "⢮"
  }
  if parr_comp(occupy, [(1, 1), (1, 1), (1, 3), (2, 1), (2, 3), (2, 4)]) {
    c = "⢯"
  }
  if parr_comp(occupy, [(2, 2), (2, 3), (2, 4)]) {
    c = "⢰"
  }
  if parr_comp(occupy, [(1, 1), (2, 2), (2, 3), (2, 4)]) {
    c = "⢱"
  }
  if parr_comp(occupy, [(1, 2), (2, 2), (2, 3), (2, 4)]) {
    c = "⢲"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (2, 2), (2, 3), (2, 4)]) {
    c = "⢳"
  }
  if parr_comp(occupy, [(1, 3), (2, 2), (2, 3), (2, 4)]) {
    c = "⢴"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (2, 2), (2, 3), (2, 4)]) {
    c = "⢵"
  }
  if parr_comp(occupy, [(1, 2), (1, 3), (2, 2), (2, 3), (2, 4)]) {
    c = "⢶"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3), (2, 2), (2, 3), (2, 4)]) {
    c = "⢷"
  }
  if parr_comp(occupy, [(2, 1), (2, 2), (2, 3), (2, 4)]) {
    c = "⢸"
  }
  if parr_comp(occupy, [(1, 1), (2, 1), (2, 2), (2, 3), (2, 4)]) {
    c = "⢹"
  }
  if parr_comp(occupy, [(1, 2), (2, 1), (2, 2), (2, 3), (2, 4)]) {
    c = "⢺"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (2, 1), (2, 2), (2, 3), (2, 4)]) {
    c = "⢻"
  }
  if parr_comp(occupy, [(1, 3), (2, 1), (2, 2), (2, 3), (2, 4)]) {
    c = "⢼"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (2, 1), (2, 2), (2, 3), (2, 4)]) {
    c = "⢽"
  }
  if parr_comp(occupy, [(1, 2), (1, 3), (2, 1), (2, 2), (2, 3), (2, 4)]) {
    c = "⢾"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3), (2, 1), (2, 2), (2, 3), (2, 4)]) {
    c = "⢿"
  }
  if parr_comp(occupy, [(1, 4), (2, 4)]) {
    c = "⣀"
  }
  if parr_comp(occupy, [(1, 1), (1, 4), (2, 4)]) {
    c = "⣁"
  }
  if parr_comp(occupy, [(1, 2), (1, 4), (2, 4)]) {
    c = "⣂"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 4), (2, 4)]) {
    c = "⣃"
  }
  if parr_comp(occupy, [(1, 3), (1, 4), (2, 4)]) {
    c = "⣄"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (1, 4), (2, 4)]) {
    c = "⣅"
  }
  if parr_comp(occupy, [(1, 2), (1, 3), (1, 4), (2, 4)]) {
    c = "⣆"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3), (1, 4), (2, 4)]) {
    c = "⣇"
  }
  if parr_comp(occupy, [(2, 1), (1, 4), (2, 4)]) {
    c = "⣈"
  }
  if parr_comp(occupy, [(1, 1), (2, 1), (1, 4), (2, 4)]) {
    c = "⣉"
  }
  if parr_comp(occupy, [(1, 2), (2, 1), (1, 4), (2, 4)]) {
    c = "⣊"
  }
  if parr_comp(occupy, [(1, 1), (2, 1), (1, 2), (1, 4), (2, 4)]) {
    c = "⣋"
  }
  if parr_comp(occupy, [(1, 3), (2, 1), (1, 4), (2, 4)]) {
    c = "⣌"
  }
  if parr_comp(occupy, [(1, 1), (2, 1), (1, 3), (1, 4), (2, 4)]) {
    c = "⣍"
  }
  if parr_comp(occupy, [(1, 2), (1, 3), (2, 1), (1, 4), (2, 4)]) {
    c = "⣎"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3), (1, 4), (2, 4), (2, 1)]) {
    c = "⣏"
  }
  if parr_comp(occupy, [(2, 2), (1, 4), (2, 4)]) {
    c = "⣐"
  }
  if parr_comp(occupy, [(1, 1), (2, 2), (1, 4), (2, 4)]) {
    c = "⣑"
  }
  if parr_comp(occupy, [(1, 2), (2, 2), (1, 4), (2, 4)]) {
    c = "⣒"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (2, 2), (1, 4), (2, 4)]) {
    c = "⣓"
  }
  if parr_comp(occupy, [(1, 3), (2, 2), (1, 4), (2, 4)]) {
    c = "⣔"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (2, 2), (1, 4), (2, 4)]) {
    c = "⣕"
  }
  if parr_comp(occupy, [(1, 2), (1, 3), (2, 2), (1, 4), (2, 4)]) {
    c = "⣖"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3)]) {
    c = "⣗"
  }
  if parr_comp(occupy, [(2, 1), (2, 2), (1, 4), (2, 4)]) {
    c = "⣘"
  }
  if parr_comp(occupy, [(1, 1), (2, 1), (2, 2), (1, 4), (2, 4)]) {
    c = "⣙"
  }
  if parr_comp(occupy, [(2, 1), (2, 2), (1, 4), (2, 4), (1, 2)]) {
    c = "⣚"
  }
  if parr_comp(occupy, [(2, 1), (2, 2), (1, 4), (2, 4), (1, 1), (1, 2)]) {
    c = "⣛"
  }
  if parr_comp(occupy, [(2, 1), (2, 2), (1, 4), (2, 4), (1, 3)]) {
    c = "⣜"
  }
  if parr_comp(occupy, [(2, 1), (2, 2), (1, 4), (2, 4), (1, 1), (1, 3)]) {
    c = "⣝"
  }
  if parr_comp(occupy, [(2, 1), (2, 2), (1, 4), (2, 4), (1, 2), (1, 3)]) {
    c = "⣞"
  }
  if parr_comp(occupy, [(2, 1), (2, 2), (1, 4), (2, 4), (1, 1), (1, 2), (1, 3)]) {
    c = "⣟"
  }
  if parr_comp(occupy, [(1, 4), (2, 3), (2, 4)]) {
    c = "⣠"
  }
  if parr_comp(occupy, [(1, 1), (1, 4), (2, 3), (2, 4)]) {
    c = "⣡"
  }
  if parr_comp(occupy, [(1, 2), (1, 4), (2, 3), (2, 4)]) {
    c = "⣢"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 4), (2, 3), (2, 4)]) {
    c = "⣣"
  }
  if parr_comp(occupy, [(1, 3), (1, 4), (2, 3), (2, 4)]) {
    c = "⣤"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (1, 4), (2, 3), (2, 4)]) {
    c = "⣥"
  }
  if parr_comp(occupy, [(1, 2), (1, 3), (1, 4), (2, 3), (2, 4)]) {
    c = "⣦"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3), (1, 4), (2, 3), (2, 4)]) {
    c = "⣧"
  }
  if parr_comp(occupy, [(1, 4), (2, 1), (2, 3), (2, 4)]) {
    c = "⣨"
  }
  if parr_comp(occupy, [(1, 1), (1, 4), (2, 1), (2, 3), (2, 4)]) {
    c = "⣩"
  }
  if parr_comp(occupy, [(1, 2), (1, 4), (2, 1), (2, 3), (2, 4)]) {
    c = "⣪"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 4), (2, 1), (2, 3), (2, 4)]) {
    c = "⣫"
  }
  if parr_comp(occupy, [(1, 3), (1, 4), (2, 1), (2, 3), (2, 4)]) {
    c = "⣬"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (1, 4), (2, 1), (2, 3), (2, 4)]) {
    c = "⣭"
  }
  if parr_comp(occupy, [(1, 2), (1, 3), (1, 4), (2, 1), (2, 3), (2, 4)]) {
    c = "⣮"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3), (1, 4), (2, 1), (2, 3), (2, 4)]) {
    c = "⣯"
  }
  if parr_comp(occupy, [(1, 4), (2, 2), (2, 3), (2, 4)]) {
    c = "⣰"
  }
  if parr_comp(occupy, [(1, 1), (1, 4), (2, 2), (2, 3), (2, 4)]) {
    c = "⣱"
  }
  if parr_comp(occupy, [(1, 2), (1, 4), (2, 2), (2, 3), (2, 4)]) {
    c = "⣲"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 4), (2, 2), (2, 3), (2, 4)]) {
    c = "⣳"
  }
  if parr_comp(occupy, [(1, 3), (1, 4), (2, 2), (2, 3), (2, 4)]) {
    c = "⣴"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (1, 4), (2, 2), (2, 3), (2, 4)]) {
    c = "⣵"
  }
  if parr_comp(occupy, [(1, 2), (1, 3), (1, 4), (2, 2), (2, 3), (2, 4)]) {
    c = "⣶"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 3), (1, 4), (2, 2), (2, 3), (2, 4)]) {
    c = "⣷"
  }
  if parr_comp(occupy, [(1, 4), (2, 1), (2, 2), (2, 3), (2, 4)]) {
    c = "⣸"
  }
  if parr_comp(occupy, [(1, 1), (1, 4), (2, 1), (2, 2), (2, 3), (2, 4)]) {
    c = "⣹"
  }
  if parr_comp(occupy, [(1, 2), (1, 4), (2, 1), (2, 2), (2, 3), (2, 4)]) {
    c = "⣺"
  }
  if parr_comp(occupy, [(1, 1), (1, 2), (1, 4), (2, 1), (2, 2), (2, 3), (2, 4)]) {
    c = "⣻"
  }
  if parr_comp(occupy, [(1, 3), (1, 4), (2, 1), (2, 2), (2, 3), (2, 4)]) {
    c = "⣼"
  }
  if parr_comp(occupy, [(1, 1), (1, 3), (1, 4), (2, 1), (2, 2), (2, 3), (2, 4)]) {
    c = "⣽"
  }
  if parr_comp(occupy, [(1, 2), (1, 3), (1, 4), (2, 1), (2, 2), (2, 3), (2, 4)]) {
    c = "⣾"
  }
  if parr_comp(occupy, [
      (1, 1),
      (1, 2),
      (1, 3),
      (1, 4),
      (2, 1),
      (2, 2),
      (2, 3),
      (2, 4),
    ]) {
    c = "⣿"
  }
  c
}

///|
pub fn parr_comp(arr1 : Array[(Int, Int)], arr2 : Array[(Int, Int)]) -> Bool {
  for i1, a1 in arr1 {
    for i2, a2 in arr2 {
      if a1 == a2 {
        let t1 = arr1.remove(i1)
        let t2 = arr2.remove(i2)

      }
    }
  }
  arr1.length() == 0 && arr2.length() == 0
}
