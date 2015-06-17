(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   iter.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 15:12:00 by roblabla          #+#    #+#             *)
(*   Updated: 2015/06/16 15:19:59 by roblabla         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let iter f x n =
    let rec inner accu nn =
        if nn = 0 then  accu
        else            inner (f accu) (nn - 1)
    in
    if n < 0 then   -1
    else            inner x n

let () =
    let my_print str f x n =
        print_string "iter (";
        print_string str;
        print_string ") ";
        print_int    x;
        print_string " ";
        print_int    n;
        print_string " = ";
        print_int    (iter f x n);
        print_string "\n"
    in
    my_print "x * x" (fun x -> x * x) 2 4;
    my_print "x * 2" (fun x -> x * 2) 2 4
