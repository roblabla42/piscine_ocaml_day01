(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   tak.ml                                             :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 11:07:23 by roblabla          #+#    #+#             *)
(*   Updated: 2015/06/16 12:25:22 by roblabla         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec tak x y z =
    if y < x then
        tak (tak (x - 1) y z) (tak (y - 1) z x) (tak (z - 1) x y)
    else
        z

let () =
    let myprint x y z =
        print_char '[';
        print_int x;
        print_char ' ';
        print_int y;
        print_char ' ';
        print_int z;
        print_string "] : ";
        flush_all ();
        print_int (tak x y z);
        print_char '\n'
    in
    myprint 1 2 3;
    myprint 5 23 7;
    myprint 9 1 0;
    myprint 1 1 1;
    myprint 0 42 0;
    myprint 23498 98734 98776
