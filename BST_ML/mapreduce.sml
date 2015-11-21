datatype 'a ntree = leaf of 'a | node of 'a ntree list;

fun map(f, [ ]) = [ ]
 | map(f, x::t) = f(x) :: map(f, t);


fun reduce(f, b, [ ]) = b
 | reduce(f, b, x::t) = f(x, reduce(f, b, t));

fun subst(tr,v1,v2) =
	let
		fun replace(x)=subst(x,v1,v2)
	in
		case tr of
		leaf(x) => if x = v1
				then leaf(v2)
				else leaf(x)
		|node(lt) => node(map(replace,lt))
	end

fun toString(tr) =
	let
		fun concat(x,y)=
			if y <> ""
			then toString(x)^" "^y
			else toString(x)
	in
		case tr of
		leaf(x) => x
		|node(lt) => reduce(concat,"",lt)
	end

(*Test cases 
val input = node([leaf("x"), node([leaf("y"), leaf("x"), leaf("z")])])
val testcase1= subst(input,"x", "w")= node([leaf("w"), node([leaf("y"), leaf("w"), leaf("z")])])
val testcase2 =toString(input)="x y x z"
*)

