import json

with open('FileFromSolarSim.json', 'r') as j:
    json_data = json.load(j)

a = json_data.get("simulationResults")

for i in range(4):
    sim_prod = a[i]['totalProductionkWh']
    print(sim_prod)

for i in range(4):
    sim_cons = a[i]['totalConsumptionkWh']
    print(sim_cons)
