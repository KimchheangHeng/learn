import numpy as np
import json
import pandas as pd

a = []

with open('displayedCell.txt', 'r') as f:
        a = json.load(f)

array = np.array(a)

diff = array[1:] - array[:-1]

s1 = pd.Series(array)
s2 = pd.Series(diff)
dataFrame = pd.DataFrame([s1, s2]).T
print(dataFrame)
