-- MIT License
-- Copyright (C) 2019 Master nama
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:

-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.

-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE

-- title:  Star16 palette - Picture art
-- author: masternama
-- desc:   I have a 5 pictures. Press left <- or Right -> to next page.
-- script: lua 

state=0 -- Load state
t=0

function picture()
-- Error
if state==-1 then
trace("Loading Error: Out of state",6)
exit()end

if state==0 then
sync(0,0)
-- Star16 Computer
map()
print("Copyright 2019 Master nama",53,52,15,nil,1,1)
print("0.6.0",130,43,15,nil,1,1)
print("Copyright",53,52,15,nil,1,1)
print("https://masterchannel8000com.weebly",50,60,15,nil,1,1)
print(".com",50,66,15,nil,1,1)
print("Hello!. Type help for help",50,74,8,nil,1,1)
print(">",50,86,15,nil,1,1)
spr(256+t%60//30*2,52,83,0,1,0,0,1,1)
t=t+0.64
print("Star16 Computer -  Page 1",1,1)
print("Press left <- or Right -> to next page",1,8)end

if state==1 then
-- Nice a world!
sync(0,1)
map()
print("Nice a world! -  Page 2",1,1)
print("Press left <- or Right -> to next page",1,8)end

if state==2 then
-- The space
sync(0,2)
map()
print("The space -  Page 3",1,1)
print("Press left <- or Right -> to next page",1,8)end

if state==3 then
-- Sky
sync(0,3)
map()
print("Sky -  Page 4",1,1)
print("Press left <- or Right -> to next page",1,8)end

if state==4 then
-- Retro video game
sync(0,4)
map()
print("Score: 152                                    Lives: 3",1,20)
print("Retro video game -  Page 5",1,1)
print("Press left <- or Right -> to next page",1,8)end

if state==5 then
state=4 end
end

function TIC()
picture()

-- Buttons
if btnp(2) then state=state-1 end
if btnp(3) then state=state+1 end
end	
-- <PALETTE>
-- 000:140c1c44243430346d4e4a4e854c30346524d04648757161597dced27d2c8595a16daa2cd2aa996dc2cadad45edeeed6
-- </PALETTE>

