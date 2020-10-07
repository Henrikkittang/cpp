

def getTime(interval):
    hours = interval.split(':')
    point = float(hours[0])
    point += float(hours[1]) * 0.0167
    return point

def parseString(string):
    string.join(string.split())
    intervals = string.split('-')
    time1 = getTime(intervals[0])
    time2 = getTime(intervals[1])
    return (time1, time2)

def readFile(filename):
    with open(filename, 'r') as f:
        data = f.read().split('\n')
        f.close()
    return data


totalHours = 0
for string in readFile('hours.txt'):
    interval = parseString(string)
    totalHours += round(interval[1] - interval[0], 3)

hourlyWage = round(int(input('Hourly wage: ')) * totalHours, 2)
print('Total hours: ', totalHours)
print('Total wage: ', hourlyWage) 
