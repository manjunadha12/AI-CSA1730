from itertools import permutations

g = [[0,10,15,20],[10,0,35,25],[15,35,0,30],[20,25,30,0]]

def tsp(g):
    n = len(g)
    best_cost = float('inf')
    best_path = []
    for p in permutations(range(1, n)):
        path = [0] + list(p) + [0]
        cost = sum(g[path[i]][path[i+1]] for i in range(n))
        if cost < best_cost:
            best_cost = cost
            best_path = path
    print("Path:", ' -> '.join(map(str, best_path)))
    print("Cost:", best_cost)

tsp(g)
