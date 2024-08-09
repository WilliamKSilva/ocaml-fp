

let rec sum u =
  match u with
  | [] -> 0 
  | hd :: tl -> hd + sum tl 