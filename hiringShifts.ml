let num_days = int_of_string (read_line ())

let input = Array.make num_days (Array.make 3 1000000000)

let rec numify num arr =
  if Array.length arr < num then
    numify num (Array.append arr [| 1000000000 |])
  else arr

let () =
  for day = 0 to num_days - 1 do
    let arr =
      read_line ()
      |> String.split_on_char ' '
      |> Array.of_list
      |> Array.map (fun x -> int_of_string x)
      |> numify 3
    in
    input.(day) <- arr
  done

(* Takes an array and reverses it in O(n) time*)
let reverse array =
  Array.of_list (Array.fold_left (fun acc valu -> valu :: acc) [] array)

type cost = {
  cost : int;
  c_days : int;
}

let n_max x y = if x > y then x else y

let optarr = Array.make (num_days + 1) { cost = 1000000000; c_days = 1 }

let () = optarr.(0) <- { cost = 0; c_days = 1 }

let () = optarr.(1) <- { cost = input.(0).(0); c_days = 1 }

let opt day w =
  if day <= 0 then optarr.(0).cost
  else if day == 1 then optarr.(1).cost
  else
    optarr.(n_max (day - w) 0).cost + input.(n_max (day - w) 0).(w - 1)

let min_cost valu old_val = if valu < old_val then valu else old_val

let () =
  for day = 2 to num_days do
    for w = 1 to 3 do
      let old_valu = optarr.(day).cost in
      let new_valu = min_cost (opt day w) old_valu in
      let old_worker = optarr.(day).c_days in
      optarr.(day) <-
        {
          cost = new_valu;
          c_days = (if new_valu < old_valu then w else old_worker);
        }
    done
  done

let rev = reverse optarr

let () = print_endline (string_of_int rev.(0).cost)

let rec create_arr idx str =
  if idx >= Array.length rev - 1 then str
  else
    create_arr
      (idx + rev.(idx).c_days)
      (string_of_int rev.(idx).c_days :: str)

let tim = Sys.time ()

let () = List.iter (fun x -> print_string (x ^ " ")) (create_arr 0 [])

let () = Printf.printf "Execution time: %fs\n" (Sys.time () -. tim)
