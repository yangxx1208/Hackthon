import numpy as np
import random 
import string

fin = open('user.txt')

label = fin.readline().split()

ranged = fin.readline().split()

data = []

for i in range(1000):
	ran_str = ''.join(random.sample(string.ascii_letters + string.digits, 8))
	user = [i+1,ran_str]
	for j in range(2,len(label)):
		r = ranged[j]
		if '-' in r:
			low = int(r.split('-')[0])
			up = int(r.split('-')[1])
			user.append(np.random.randint(low, up + 1))
		else:
			n = len(r)
			s = ''
			for k in range(n):
				s += str(np.random.randint(2))
			user.append(s)
	data.append(user)

fout = open('users.txt', 'w')
result = ''
for word in label:
	result += word
	result += '\t'
result += '\n'
fout.write(result)
for i in range(1000):
	d = data[i]
	result = ''
	for word in d:
		result += str(word)
		result += '\t'
	result += '\n'
	fout.write(result)

fout.close()
fin.close()
