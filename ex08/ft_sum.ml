(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_sum.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2015/06/16 17:38:12 by roblabla          #+#    #+#             *)
(*   Updated: 2015/06/16 18:30:49 by roblabla         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_sum fn from upto =
    let rec inner i accu =
        if i > upto then accu
        else              inner (i + 1) (fn i +. accu)
    in
    if from > upto then nan
    else                inner from 0.0

let () =
    print_float (ft_sum (fun i -> float_of_int (i * i)) 1 10);
    print_float (ft_sum (fun i -> float_of_int (i * i)) 10 10);
    print_float (ft_sum (fun i -> float_of_int (i * i)) 11 10);
