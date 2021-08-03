module Card : 
struct
  module Color =
  struct
    type t = Spade | Heart | Diamond | Club 
  
    let all = [ Spade; Heart; Diamond; Club ]
  
    let toString color = 
      match color with
      | Spade -> "S"
      | Heart -> "H"
      | Diamond -> "D"
      | Club -> "C"
  
    let toStringVerbose color = 
      match color with
      | Spade -> "Spade"
      | Heart -> "Heart"
      | Diamond -> "Diamond"
      | Club -> "Club"
  end
  
  module Value =
  struct
    type t = T2 | T3 | T4 | T5 | T6 | T7 | T8 | T9 | T10 | Jack | Queen | King | As
  
    let all = [ T2; T3; T4; T5; T6; T7; T8; T9; T10; Jack; Queen; King; As ]
  
    let toInt t =
      match t with
      | T2 -> 1
      | T3 -> 2
      | T4 -> 3
      | T5 -> 4
      | T6 -> 5
      | T7 -> 6
      | T8 -> 7
      | T9 -> 8
      | T10 -> 9
      | Jack -> 10
      | Queen -> 11
      | King -> 12
      | As -> 13
  
    let toString t =
      match t with
      | T2 -> "2"
      | T3 -> "3"
      | T4 -> "4"
      | T5 -> "5"
      | T6 -> "6"
      | T7 -> "7"
      | T8 -> "8"
      | T9 -> "9"
      | T10 -> "10"
      | Jack -> "J"
      | Queen -> "Q"
      | King -> "K"
      | As -> "A"
  
    let toStringVerbose t =
      match t with
      | T2 -> "2"
      | T3 -> "3"
      | T4 -> "4"
      | T5 -> "5"
      | T6 -> "6"
      | T7 -> "7"
      | T8 -> "8"
      | T9 -> "9"
      | T10 -> "10"
      | Jack -> "Jack"
      | Queen -> "Queen"
      | King -> "King"
      | As -> "As"
  
    let next t =
      match t with
      | T2 -> T3
      | T3 -> T4
      | T4 -> T5
      | T5 -> T6
      | T6 -> T7
      | T7 -> T8
      | T8 -> T9
      | T9 -> T10
      | T10 -> Jack
      | Jack -> Queen
      | Queen -> King
      | King -> As
      | As -> invalid_arg "No next value"
  
    let previous t =
      match t with
      | T2 -> invalid_arg "No prev value"
      | T3 -> T2
      | T4 -> T3
      | T5 -> T4
      | T6 -> T5
      | T7 -> T6
      | T8 -> T7
      | T9 -> T8
      | T10 -> T9
      | Jack -> T10
      | Queen -> Jack
      | King -> Queen
      | As -> King
  end
  
  type t = { value: Value.t ; color: Color.t }
  
  let newCard value color = { value = value ; color = color }
  
  let allSpades =
    List.map (fun card -> (newCard card Color.Spade)) Value.all
    
  let allHearts =
    List.map (fun card -> (newCard card Color.Heart)) Value.all
   
  let allDiamonds =
    List.map (fun card -> (newCard card Color.Diamond)) Value.all
    
  let allClubs =
    List.map (fun card -> (newCard card Color.Club)) Value.all
    
  let all =
    allSpades @ allHearts @ allDiamonds @ allClubs
  
  let getValue t = t.value
  let getColor t = t.color
  
  let toString t =
    Printf.sprintf ("%s%s") (Value.toString t.value) (Color.toString t.color)
  
  let toStringVerbose t =
    Printf.sprintf ("Card(%s, %s)") (Value.toStringVerbose t.value) (Color.toStringVerbose t.color)
  
  let compare (v1, _) (v2, _) =
    if v1 = v2 then 0 else
    if v1 > v2 then 1 else
    (-1)
  
  let max card1 card2 =
    if card1 < card2 then card2
    else card1
  
  let min card1 card2 =
    if card1 > card2 then card2
    else card1
  
  let best card =
      match card with
      [] -> invalid_arg "No content cards"
      | hd :: tl -> List.fold_left max hd tl
  
  let isOf t color =
    color = t.color
  
  let isSpade t =
    isOf t Color.Spade
  
  let isHeart t =
    isOf t Color.Heart
  
  let isDiamond t =
    isOf t Color.Diamond
  
  let isClub t =
    isOf t Color.Club
end

let newDeck = 
  Random. Card.all

let toStringList t =
  List.map Card.toString t

let toStringListVerbose t =
  List.map Card.toStringVerbose t

let drawCard : t -> (Card.t * t)