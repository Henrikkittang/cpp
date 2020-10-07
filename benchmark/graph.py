import matplotlib.pyplot as plt

def read_file(name):
    with open('graph/' + name + '.txt', 'r') as f:
        data = f.read().split('\n')
        f.close();
    data.pop()
    return data

def average(arr):
    total = 0
    for i in arr:
        total += int(i)
    return total // len(arr)

opt_data = read_file('opt')
un_opt_data = read_file('un_opt')

opt_data.sort()
un_opt_data.sort()

#average
opt_data_average = average(opt_data)
un_op_data_average = average(un_opt_data)

#median
opt_data_median = int(opt_data[len(opt_data)//2])
un_opt_data_median = int(un_opt_data[len(un_opt_data)//2])
print(opt_data_median, un_opt_data_median)

#init subplots
fig, (ax_av, ax_me) = plt.subplots(1, 2)
fig.suptitle('Benchmark')

#fill average
ax_av.bar(0.8, opt_data_average, width=0.2, label='opt_data')
ax_av.bar(1.2, un_op_data_average, width=0.2, label='un_opt_data')
ax_av.set_title('Average')

#fill median
ax_me.bar(0.8, opt_data_median, width=0.2, label='opt_data')
ax_me.bar(1.2, un_opt_data_median, width=0.2, label='un_opt_data')
ax_me.set_title('Median')

#plt.legend()
plt.show()


