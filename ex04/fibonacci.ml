(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   fibonacci.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 14:36:04 by roblabla          #+#    #+#             *)
(*   Updated: 2015/06/16 14:44:49 by roblabla         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let fibonacci x =
    let rec inner i n_1 n_2 =
             if i < 0 then -1
        else if i = 0 then n_1
        else               inner (i - 1) n_2 (n_1 + n_2)
    in
    inner x 0 1

let () =
    let my_print x =
        print_char '[';
        print_int x;
        print_string "] : ";
        flush_all ();
        print_int (fibonacci x);
        print_char '\n'
    in
    my_print (-42);
    my_print 1;
    my_print 3;
    my_print 6
