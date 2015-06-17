(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ackermann.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 10:39:18 by roblabla          #+#    #+#             *)
(*   Updated: 2015/06/16 12:25:43 by roblabla         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec ackermann m n =
    if m < 0 || n < 0 then
        -1
    else if m = 0 then
        n + 1
    else if m > 0 && n = 0 then
        ackermann (m - 1) 1
    else
        ackermann (m - 1) (ackermann m (n - 1))

let () =
    let my_print x y =
        print_char '[';
        print_int x;
        print_char ' ';
        print_int y;
        print_string "] : ";
        flush_all ();
        print_int (ackermann x y);
        print_char '\n'
    in
    my_print (-1) 7;
    my_print 0 0;
    my_print 2 3;
    my_print 4 1
