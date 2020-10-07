import flow
import pygame
pygame.init()

g_width = 600
g_height = 600
scl = 15
g_font = pygame.font.SysFont(" ", 30, True)


def readTextFile(filename):
    with open('../' + filename + '.txt', 'r') as f:
        data = f.read()

    lines = data.split('\n')

    coords = []
    for line in lines:
        if len(line) == 0: continue
        num = ''
        temp = []
        save_num = False
        for char in line:
            asc = ord(char)
            if(asc >= 48  and asc <= 57):
                num += char
                save_num = True
            elif save_num:
                temp.append( int(num) )
                num = ''
                save_num = False

        if save_num:
            temp.append( int(num) )
        coords.append(temp)
    
    return coords        

class Marker():
    def __init__(self, x, y):
        self.x = x
        self.y = y
        self.color = (0, 255, 0)

    def draw(self, wn):
        drawPosX = self.x * scl
        drawPosY = self.y * scl
        pygame.draw.line(wn, self.color, (drawPosX, drawPosY), (drawPosX + scl, drawPosY))
        pygame.draw.line(wn, self.color, (drawPosX + scl, drawPosY), (drawPosX + scl, drawPosY + scl))
        pygame.draw.line(wn, self.color, (drawPosX + scl, drawPosY + scl), (drawPosX, drawPosY + scl))
        pygame.draw.line(wn, self.color, (drawPosX, drawPosY + scl), (drawPosX, drawPosY))

        pygame.draw.rect(wn, self.color, (self.x*scl, self.y*scl, scl, scl), 3)

        coor = g_font.render(str(drawPosX) + ', ' + str(drawPosY), 1, (240, 255, 0))
        wn.blit(coor, (5, 5))

    def getInput(self, wallLayout):
        keys = pygame.key.get_pressed()

        if keys[pygame.K_RIGHT]:
            self.x += 1
        if keys[pygame.K_LEFT] and self.x > 0:
            self.x -= 1
        if keys[pygame.K_DOWN]:
            self.y += 1
        if keys[pygame.K_UP] and self.y > 0:
            self.y -= 1

        if keys[pygame.K_SPACE]:
            for idx, i in  enumerate(wallLayout):
                if [self.x, self.y] == i[0:2]:
                    wallLayout.pop(idx)
                    return
            wallLayout.append([self.x, self.y, 0])
        
        if keys[pygame.K_f]:      
            states = []                  
            for y in range(0, g_height // scl):
                states.append([])
                for x in range(0, g_width // scl):
                    states[y].append(0)
            
            for yes in wallLayout:
                states[yes[1]][yes[0]] = 1

            yeets = flow.find_open(states, (self.x, self.y))
            for yeet in yeets:
                wallLayout.append([yeet[0], yeet[1], 0])

def drawWall(wn, wall):
    pygame.draw.rect(wn, (255, 0, 0), (wall[0]*scl, wall[1]*scl, scl, scl))


def saveLayout(layout):
    open('../map.txt', 'w').close()


    with open('../map.txt', 'a') as f:
        for wall in layout:
            coor = '[%d,%d]:%d \n' % (wall[0], wall[1], wall[2])
            f.write(coor)
        f.close()


def drawGrid(wn):
    for i in range(0, g_height, scl):
        pygame.draw.line(wn, (0, 0, 0), (0, i), (g_width, i), 1)

    for i in range(0, g_width, scl):
        pygame.draw.line(wn, (0, 0, 0), (i, 0), (i, g_height))


def main():

    wn = pygame.display.set_mode((g_width, g_height))
    wallLayout = readTextFile('map')

    marker = Marker(2, 2)
    while True:
        wn.fill((0, 0, 0))
        pygame.time.delay(100)
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                quit()

        for wall in wallLayout:
            drawWall(wn,wall)

        drawGrid(wn)

        marker.getInput(wallLayout)
        marker.draw(wn)

        saveLayout(wallLayout)

        pygame.display.update()


main()
quit()



