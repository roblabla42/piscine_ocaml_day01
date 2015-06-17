(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   converges.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 16:32:43 by roblabla          #+#    #+#             *)
(*   Updated: 2015/06/16 17:11:12 by roblabla         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec converges fn x n =
         if n <= 0   then    fn x = x
    else if fn x = x then    true
    else                     converges fn (fn x) (n - 1)

let () =
    let my_print str f x n =
        print_string "converges (";
        print_string str;
        print_string ") towards ";
        print_int    x;
        print_string " in ";
        print_int    n;
        print_string " = ";
        print_string (if converges f x n then "true" else "false");
        print_string "\n"
    in

    my_print "x * 2" (( * ) 2) 2 5;
    my_print "x / 2" (fun x -> x / 2) 2 3;
    my_print "x / 2" (fun x -> x / 2) 2 2;;
