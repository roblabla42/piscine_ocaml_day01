(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   hofstadter_mf.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 14:45:29 by roblabla          #+#    #+#             *)
(*   Updated: 2015/06/16 14:54:40 by roblabla         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec hfs_f n =
         if n = 0 then 1
    else if n > 0 then n - (hfs_m (hfs_f (n - 1)))
    else               -1
and hfs_m n =
         if n = 0 then 0
    else if n > 0 then n - (hfs_f (hfs_m (n - 1)))
    else               -1

let () =
    let my_print_m x =
        print_string "hfs_m(";
        print_int x;
        print_string ") = ";
        print_int (hfs_m x);
        print_char '\n' in
    let my_print_f x =
        print_string "hfs_f(";
        print_int x;
        print_string ") = ";
        print_int (hfs_f x);
        print_char '\n'
    in
    my_print_m 0;
    my_print_f 0;
    my_print_m 4;
    my_print_f 4
