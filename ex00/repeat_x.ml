(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   repeat_x.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 07:27:54 by roblabla          #+#    #+#             *)
(*   Updated: 2015/06/16 12:26:16 by roblabla         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let repeat_x x =
    let rec inner str i =
        if i < 0 then
            "Error"
        else if i = 0 then
            ""
        else if i = 1 then
            str ^ "x"
        else
            inner (str ^ "x") (i - 1)
    in
    inner "" x

let () =
    print_endline (repeat_x (-1));
    print_endline (repeat_x 0);
    print_endline (repeat_x 1);
    print_endline (repeat_x 2);
    print_endline (repeat_x 5)
