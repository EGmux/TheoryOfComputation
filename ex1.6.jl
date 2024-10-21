using CairoMakie
using GraphMakie
using GraphMakie.NetworkLayout
using Graphs

a = SimpleDiGraph(3)

add_edge!(a, 1, 2);  # start state
add_edge!(a, 2,2);  # acceptance state
add_edge!(a, 2, 3);
add_edge!(a, 3,3); 

edgecolors = [
    :black for i in 1:ne(a)
]

arrow_size =[10+i for i in 1:ne(a)]
arrow_shift = range(0.1, 0.8, length=ne(a))
display(graphplot(a,node_color=[:red,:green, :white],edge_color=edgecolors, ilabels=["",L"q_0",  L"q_1"],
    elabels=["","1","0", L"\sum"]
    ,arrow_shift,arrow_show=true, arrow_size=20,curve_distance_usage=true, curve_distance=-0.2,elabels_shift=0.5,elabels_offset=Point2f(0.1,-0.1)))

b = SimpleDiGraph(5)

add_edge!(b, 1, 2);  # start state
add_edge!(b, 2,3);
add_edge!(b,2,2);
add_edge!(b,3,3);
add_edge!(b,3,4);
add_edge!(b,4,4);
add_edge!(b,4,5); # acceptance state
add_edge!(b,5,5); # acceptance state

edgecolors = [
    :black for i in 1:ne(b)
]

arrow_size =[10+i for i in 1:ne(b)]
arrow_shift = range(0.1, 0.8, length=ne(b))

display(graphplot(b,node_color=[:red,:white,:white,:white,:green],edge_color=edgecolors, ilabels=["",L"q_0",L"q_1",L"q_2",L"q_accept"],
    elabels=["","0","1","0","1","0","1",L"\Sigma"]
    ,arrow_shift,arrow_show=true, arrow_size=20,curve_distance_usage=true, curve_distance=-0.2,elabels_shift=0.5,elabels_offset=Point2f(0.0,-0.0)))

c = SimpleDiGraph(6)

add_edge!(c, 1, 2);  # start state
add_edge!(c, 2,2);  # acceptance state, read 1
add_edge!(c, 2, 3); # read 0
add_edge!(c, 3, 3); # read 0
add_edge!(c, 3,4);  # read 1
add_edge!(c, 4, 4) # read 1
add_edge!(c, 4,5);  # read 0
add_edge!(c, 5, 5) # read 0
add_edge!(c, 5,6);  # read 1
add_edge!(c, 6, 6) # read sigma


edgecolors = [
           :black for i in 1:ne(c)
]

arrow_size=[10+i for i in 1:ne(c)]
arrow_shift=range(0.1,0.8,length=ne(c))
display(graphplot(c,node_color=[:red,:white, :white, :white,:white,:green],edge_color=edgecolors, ilabels=["",L"q_1",L"q_2",L"q_3",L"q_4",L"q_5"],
    elabels=["","1","0","0","1","1","0","0","1",L"\Sigma"]
    ,arrow_shift,arrow_show=true, arrow_size=20,curve_distance_usage=true, curve_distance=-0.2,elabels_shift=0.5,elabels_offset=Point2f(0.1,-0.1)))

d = SimpleDiGraph(6)

add_edge!(d, 1, 2);  # start state
add_edge!(d, 2,3);  # read whatever
add_edge!(d, 3,4);  # read whatever
add_edge!(d, 4,5);  # read 1 enter acceptance state
add_edge!(d, 5, 5) # read sigma
add_edge!(d, 4,6);  # read 0
add_edge!(d, 6, 6) # read sigma


edgecolors = [
             :black for i in 1:ne(d)
]

arrow_size =[10+i for i in 1:ne(d)]
arrow_shift = range(0.1, 0.8, length=ne(d))

display(graphplot(d,node_color=[:red,:white, :white, :white, :green, :white],edge_color=edgecolors, ilabels=["",L"q_0",L"q_1",L"q_2", L"q_3",L"q_4"],
    elabels=["",L"\Sigma",L"\Sigma","1","0",L"\Sigma",L"\Sigma",]
    ,arrow_shift,arrow_show=true, arrow_size=20,curve_distance_usage=true, curve_distance=-0.2,elabels_shift=0.5,elabels_offset=Point2f(0.1,-0.1)))

e = SimpleDiGraph(6)

add_edge!(e, 1, 2);  # start state
add_edge!(e, 2,3);  # read 0
add_edge!(e, 2,4);  # read 1
# must guarantee odd length if to 3
add_edge!(e, 3,5);  # read sigma
add_edge!(e, 5,3);  # read sigma
# must guarantee even length if to 4
add_edge!(e, 4,6);  # read sigma
add_edge!(e, 6,4);  # read sigma

edgecolors = [
             :black for i in 1:ne(e)
]

arrow_size =[10+i for i in 1:ne(e)]
arrow_shift = range(0.1, 0.8, length=ne(e))

display(graphplot(e,node_color=[:red,:white, :green, :white,:white, :green],edge_color=edgecolors, ilabels=["",L"q_0",L"q_1",L"q_2",L"q_3", L"q_4"],
    elabels=["","0","1",L"\Sigma",L"\Sigma",L"\Sigma",L"\Sigma"]
    ,arrow_shift,arrow_show=true, arrow_size=20,curve_distance_usage=true, curve_distance=-0.2,elabels_shift=0.5,elabels_offset=Point2f(0.1,-0.1)))

f = SimpleDiGraph(5)

add_edge!(f, 1, 2);  # start state
add_edge!(f, 2,2);  # acceptance state
add_edge!(f, 2,3);  # read 1
add_edge!(f, 3,4);  # read 1
add_edge!(f, 3, 3) # read 0
add_edge!(f, 4,5);  # read 0
add_edge!(f, 4, 4) # read 1
add_edge!(f, 5, 5) # read sigma


edgecolors = [
             :black for i in 1:ne(f)
]

arrow_size =[10+i for i in 1:ne(f)]
arrow_shift = range(0.1, 0.8, length=ne(f))

display(graphplot(f,node_color=[:red,:green, :green, :green, :white],edge_color=edgecolors, ilabels=["",L"q_0",L"q_1",L"q_2",L"q_3"],
    elabels=["","0","1","0","1","1","0",L"\Sigma"]
    ,arrow_shift,arrow_show=true, arrow_size=20,curve_distance_usage=true, curve_distance=-0.2,elabels_shift=0.5,elabels_offset=Point2f(0.1,-0.1)))

g = SimpleDiGraph(8)

add_edge!(g, 1, 2);  # start state
add_edge!(g, 2,3);  # read sigma
add_edge!(g, 3,4);  # read sigma
add_edge!(g, 4,5);  # read sigma
add_edge!(g, 5,6);  # read sigma
add_edge!(g, 6,7);  # read sigma
add_edge!(g, 7,8);  # read sigma
add_edge!(g, 8, 8) # read sigma

edgecolors = [
             :black for i in 1:ne(g)
]

arrow_size =[10+i for i in 1:ne(g)]
arrow_shift = range(0.1, 0.8, length=ne(g))

display(graphplot(g,node_color=[:red,:green,:green,:green,:green,:green,:green,:white],edge_color=edgecolors, ilabels=["",L"q_0",L"q_1", L"q_2", L"q_3",L"q_4",L"q_5",L"q_6"],
    elabels=["",L"\Sigma",L"\Sigma",L"\Sigma",L"\Sigma",L"\Sigma",L"\Sigma",L"\Sigma"]
    ,arrow_shift,arrow_show=true, arrow_size=20,curve_distance_usage=true, curve_distance=-0.2,elabels_shift=0.5,elabels_offset=Point2f(0.3,-0.3)))


h = SimpleDiGraph(10)

add_edge!(h, 1, 2);  # start state
add_edge!(h, 2,3);  # read 0
add_edge!(h, 3, 3) # read sigma acceptance state
add_edge!(h, 2,4);  # read 1
add_edge!(h, 4,5);  # read 0
add_edge!(h, 5, 5) # read sigma
add_edge!(h, 4,6);  # read 1
add_edge!(h, 6,7);  # read 0
add_edge!(h, 7, 7) # read sigma
add_edge!(h, 6,8);  # read 1
add_edge!(h, 8,9);  # read 0
add_edge!(h, 9, 9) # read sigma
add_edge!(h, 8,10);  # read 1
add_edge!(h, 10, 10) # read sigma


edgecolors = [
             :black for i in 1:ne(h)
]

arrow_size =[10+i for i in 1:ne(h)]
arrow_shift = range(0.1, 0.8, length=ne(h))

display(graphplot(h,node_color=[:red,:green,:green,:green,:green,:white,:green,:white,:green,:green],edge_color=edgecolors, ilabels=["",L"q_0",L"q_1",L"q_2",L"q_3",L"q_4",L"q_4",L"q_5",L"q_6",L"q_7"],
    elabels=["","0","1",L"\Sigma","0","1",L"\Sigma","0","1",L"\Sigma","0",L"\Sigma","1",L"\Sigma"]
    ,arrow_shift,arrow_show=true, arrow_size=20,curve_distance_usage=true, curve_distance=-0.2,elabels_shift=0.5,elabels_offset=Point2f(0.1,-0.1)))

