# -*- coding:utf-8 -*- 

import requests
import json
import numpy as np
from tsp_solver.greedy import solve_tsp


INF = 2e10

original = [[121.506377,31.245105],
[121.670502,31.146231],
[121.728112,31.059636],
[121.512154,31.240983],
[121.514263,31.240165],
[121.480041,31.2403],
[121.403627,31.230573],
[121.497854,31.240722],
[121.926031,30.902604],
[121.22301,31.102519],
[121.202527,31.100699]]

original = original[:4]


def reply(origin_name, destination_name):
    url = "http://api.map.baidu.com/direction/v2/transit?origin={origin}&destination={destination}&ak=qFpM7c6t6lmwp5h97uYBpcjiPA8P0fLe".format(origin = origin_name , destination = destination_name)
    response = requests.get(url)
    status_code = response.status_code
    return response.json()


def dic_dic(dic):
    dict_ex = {}
    for item in dic.keys():
        if not isinstance(dic[item],(dict)):
            dict_ex[item] = dic[item]
        else: 
            dict_ex =  dict(dict_ex, **dic_dic(dic[item]))
    return dict_ex


def create_road(original):
    road={}
    n = len(original)
    for i in range(n):
        for j in range(n):
            if not i == j:
                o_n = str(original[i][1])+','+str(original[i][0])
                d_n = str(original[j][1])+','+str(original[j][0])
                r=dic_dic(reply(o_n, d_n))
                r['price'] = r['detail'][0]['total_price']
                road[i, j] = r
                string = '['+str(i)+','+str(j)+'] is done!'
                print(string)
    return road


def tsp_greedy(D):
    return solve_tsp(D)


def tsp_cooling(D):
    # Get arguments
    args = parse_args()
    # Use the corresponding data file
    if args.file:
        filename = args.file
    elif args.data == 'nctu':
        filename = "data/nctu.csv"
    elif args.data == 'nthu':
        filename = "data/nthu.csv"
    elif args.data == 'thu':
        filename = "data/thu.csv"
    else:
        print("ERROR: undefined data file")
    coordinates = np.loadtxt(filename, delimiter=',')
    # Constant Definitions
    NUM_NEW_SOLUTION_METHODS = 3
    SWAP, REVERSE, TRANSPOSE = 0, 1, 2
    # Params Initial
    num_location = coordinates.shape[0]
    markov_step = args.markov_coefficient * num_location
    T_0, T, T_MIN = args.init_temperature, args.init_temperature, 1
    T_NUM_CYCLE = 1
    # Build distance matrix to accelerate cost computing
    distmat = get_distmat(coordinates)
    # States: New, Current and Best
    sol_new, sol_current, sol_best = (np.arange(num_location), ) * 3
    cost_new, cost_current, cost_best = (float('inf'), ) * 3
    # Record costs during the process
    costs = []
    # previous cost_best
    prev_cost_best = cost_best
    # counter for detecting how stable the cost_best currently is
    cost_best_counter = 0
    # Simulated Annealing
    while T > T_MIN and cost_best_counter < args.halt:
        for i in np.arange(markov_step):
            # Use three different methods to generate new solution
            # Swap, Reverse, and Transpose
            choice = np.random.randint(NUM_NEW_SOLUTION_METHODS)
            if choice == SWAP:
                sol_new = swap(sol_new)
            elif choice == REVERSE:
                sol_new = reverse(sol_new)
            elif choice == TRANSPOSE:
                sol_new = transpose(sol_new)
            else:
                print("ERROR: new solution method %d is not defined" % choice)
            # Get the total distance of new route
            cost_new = sum_distmat(sol_new, distmat)
            if accept(cost_new, cost_current, T):
                # Update sol_current
                sol_current = sol_new.copy()
                cost_current = cost_new
                if cost_new < cost_best:
                    sol_best = sol_new.copy()
                    cost_best = cost_new
            else:
                sol_new = sol_current.copy()
        # Lower the temperature
        alpha = 1 + math.log(1 + T_NUM_CYCLE)
        T = T_0 / alpha
        costs.append(cost_best)
        # Increment T_NUM_CYCLE
        T_NUM_CYCLE += 1
        # Detect stability of cost_best
        if isclose(cost_best, prev_cost_best, abs_tol=1e-12):
          cost_best_counter += 1
        else:
          # Not stable yet, reset
          cost_best_counter = 0
        # Update prev_cost_best
        prev_cost_best = cost_best
        # Monitor the temperature & cost
        print("Temperature:", "%.2f°C" % round(T, 2),
              " Distance:", "%.2fm" % round(cost_best, 2),
              " Optimization Threshold:", "%d" % cost_best_counter)
    # # Show final cost & route
    # print("Final Distance:", round(costs[-1], 2))
    # print("Best Route", sol_best)
    # route = json.dumps(sol_best.tolist())
    # payloads = [ costs[-1], route, markov_step ]
    # # Save the result to sqlite
    # save_sqlite(payloads)
    # #export to path.json for google map
    # export2json(filename, sol_best)
    # # Plot cost function and TSP-route
    # plot(sol_best.tolist(), coordinates, costs)
    return sol_best



def weather(road, influ):
    # cut some roads by weather
    return road


def solve(road, n):
    keys = ['price', 'distance', 'duration']
    res = {}
    for key in keys:
        D = np.zeros((n, n))
        for i in range(n):
            for j in range(n):
                if not i == j:
                    D[i, j] = int(road[i, j][key])
                else:
                    D[i, j] = 0
        res[key] = tsp_greedy(D)
    return res


road = create_road(original)
print(solve(road, len(original)))