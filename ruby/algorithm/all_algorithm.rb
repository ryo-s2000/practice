num = 11

 while true
    if num.to_s == num.to_s.reverse &&
        num.to_s(8) == num.to_s(8).reverse &&
        num.to_s(2) == num.to_s(2).reverse
        puts num
        puts num.to_s(8)
        puts num.to_s(2)
        break
    end
    num += 2
 end
String.prototype.reverse = function(){
    return this.split("").reverse().join("");
}

var num = 11;

while(true){
    if((num.toString() == num.toString().reverse()) &&
       (num.toString(8) == num.toString(8).reverse()) &&
       (num.toString(2) == num.toString(2).reverse())){
           console.log(num);
           console.log(num.toString(8));
           console.log(num.toString(2));
           break;
       }
       num += 2;
}
var
 op = ["*",""];

for(i = 1000; i < 10000; i++){
    var c = String(i);
    for(j = 0; j < op.length; j++){
        for(k = 0; k < op.length; k++){
            for(l = 0; l < op.length; l++){
                val = c.charAt(3) + op[j] + c.charAt(2) + op[k] + c.charAt(1) + op[1] + c.charAt(0);
                if(val.length > 4){
                    if(i == eval(val)){
                        console.log(val + "=" + i);
                    }
                }
            }
        }
    }
}
N = 100
cards = Array.new(N,false)

(2..N).each{|i|
    j = i-1
    while(j < cards.size) do
        cards[j] = !cards[j]
        j += i
    end
}

N.times{|i|
    puts i + 1 if !cards[i]
}

(1..100).each{|i|
    flag = false
    (1..100).each{|j|
        if i % j == 0 then
            flag = !flag
        end
    }
    puts i if flag
}
puts !true
puts true
def cutbar(m,n,current)
    if current >= n then
        return 0 
    elsif current < m then
        1 + cutbar(m,n,current * 2)
    else
        1 + cutbar(m,n,current + m)
    end
end

puts cutbar(3,20,1)
puts cutbar(5,100,1)
def cutbar(m,n)
    count = 0
    current = 1
    while n > current do
        current += current < m ? current : m
        count += 1
    end
    puts count
end

cutbar(3,20)
cutbar(5,100)
def cutbar(m,n)
    count = 0
    current = 1
    while n > current do
        current += current < m ? current : m
        count += 1
    end
    puts count
end

cutbar(3,20)
cutbar(5,100)
@count = 0

def change(target, coins, usable)
    coin = coins.shift
    if coins.size == 0 then
        @count += 1 if target / coin <= usable
    else 
        (0..target/coin).each{|i|
            change(target - coin * i, coins.clone, usable - i)
        }
    end 
end

change(1000,[500,100,50,10],15)
puts @count
count
require "date"

term = Date.parse("19641010")..Date.parse("20200724")

term_list = term.map{|d| d.strftime("%y%m%d").to_i}

puts term_list.select{|d| d==d.to_s(2).reverse.to_i(2)}

require "date"

from_left = 19641010.to_s(2)[4,8].to_i(2)
to_left = 20200724.to_s(2)[4,8].to_i(2)

from_left.upto(to_left){|i|
    l = 0x8b % i
    r = l.to_s.reverse
    (0..1).each{|m|
        value = "1001#{l}#{m}#{r}1001"
        begin
            puts Date.parse(value.to_i(2).to_s).strftime("%y%m%d")
            rescue
        end
    }
}


boy, girl = 20,10
boy, girl = boy + 1, girl + 1

ary = Array.new(boy * girl){0}
ary[0] = 1
girl.times{|g|
    boy.times{|b|
        if (b != g) && (boy - b != girl - g) then
            ary[b + boy * g] += ary[b - 1 + boy * g] if b > 0
            ary[b + boy * g] += ary[b + boy * (g - 1) ] if g > 0
        end
    }
}

puts ary[-2] + ary[-boy -1]
var boy = 20;
var girl = 10;
boy += 1;
girl += 1;

var ary = new Array(girl);

for(var i = 0; i < girl; i++){
    ary[i] = new Array(boy);
    for(var j = 0; j < boy; j++){
        ary[i][j] = 0;
    }
}

ary[0][0] = 1;

for(var i = 0; i < girl; i++){
    for(var j = 0; j < boy; j++){
        if((i != j)&&(boy - j != girl - i)){
            if(j > 0){
                ary[i][j] += ary[i][j - 1];
            }
            if(i > 0){
                ary[i][j] += ary[i - 1][j];
            }
        }
    }
}

console.log(ary[girl - 2][boy - 1] + ary[girl -1][boy - 2]);
def sum_max(roulette,n)
    ans = 0
    roulette.size.times{|i|
        tmp = 0
        if i + n <= roulette.size then
            tmp = roulette[i,n].inject(:+)
        else
            tmp = roulette[0,(i+n) % roulette.size].inject(:+)
            tmp += roulette[i..-1].inject(:+)
        end
        ans = [ans,tmp].max
    }
    return ans
    
end

cnt = 0

(2..36).each{|i|
    cnt += 1 if sum_max(european,i) < sum_max(american,i)
    
}

puts cnt
european = [
    0,32,15,19,4,21,2,25,17,34,6,27,13,36,11,30,8,23,10,5,24,16,33,1,20,14,31,9,22,18,29,7,28,12,35,3,26
    ]
american = [
    0,28,9,26,30,11,7,20,32,17,5,22,34,15,3,24,36,13,1,00,27,10,25,29,12,8,19,31,18,6,21,33,16,4,23,35,14,2
    ]
    
def sum_max(roulette,n)
    ans = roulette[0,n].inject(:+)
    tmp = ans
    roulette.size.times{|i|
        #i=36..0
        #n=2..36
        #roulette.size = 36
        tmp += roulette[(i + n) % roulette.size]
        tmp -= roulette[i]
        ans = [ans,tmp].max
    }
    ans
end

cnt = 0
(2..36).each{|i|
    cnt += 1 if sum_max(european,i) < sum_max(american,i)
}

puts cnt
var memo = new Array();

function fib(n){
    if(memo[n] === null){
        if((n === 0)||(n === 1)){
           memo[n] = 1;
        }else{
           memo[n] = fib(n - 2) + fib(n - 1);
        } 
    }
    return memo[n];
}

console.log(fib(3));
@memo = {}

def fib(n)
    return @memo[n] if @memo.has_key?(n)
    if(n == 0)||(n == 1)
        @memo[n] = 1    
    else
        @memo[n] = fib(n -1) + fib(n - 2)
    end
end

puts fib(0)
a = b = 1
count = 0
while (count < 11) do
    c = a + b
    sum = 0
    c.to_s.split(//).each{|e|
        sum += e.to_i
    }
    if (c % sum == 0) then
        puts c
        count += 1
    end
    a,b = b,c
end
split
count = 0
(0..9).to_a.permutation do |w, e, l, o, v, c, d, i, q|
    next if w == 0 or l == 0 or c == 0
    
    we = w * 10 + e 
    love = l * 1000 + o * 100 + v * 10 + e
    codeiq = c * 100000 + o * 10000 + d * 1000 + e * 100 + i * 10 + q
    
    if we * love == codeiq  then
        count += 1
        puts "#{we} * #{love} = #{codeiq}"
    end
    
end

puts count
expression = "READ+WRITE+TALK==SKILL"
nums = expression.split(/[^a-zA-Z]/)
chars = nums.join().split("").uniq
head = nums.map{|num| num[0]}

count = 0
(0..9).to_a.permutation(chars.size){|seq|
    is_zero_first = false
    if seq.include?(0) then
        is_zero_first = head.include?(chars[seq.index(0)])
    end
    if !is_zero_first then
        e = expression.tr(chars.join(), seq.join())
        if eval(e) then
            puts e
            count += 1
        end
    end
}

puts count
count = 0

(0..9).to_a.permutation(6){|e, a, d, t, k, l|
    if((a + t == 8) || (a + t == 9) || (a + t == 10)) && ((a + e == 8) || (a + e == 9) || (a + e == 10)) && ((d + e + k) % 10 == 1)&&
    (((a + t + l) * 10 + d + e + k) % 100 == 1 * 11)then
        ((0..9).to_a - [k, e, d, l, t, a]).permutation(4){|i, r, s, w|
            if((r != 0) && (w != 0) && (t != 0)) && ((s == w + 1) || (s == w + 2))then
                read = r * 1000 + e * 100 + a * 10 + d 
                write = w * 10000 + r * 1000 + i * 100 + t * 10 + e 
                talk = t * 1000 + a * 100 + l *10 + k
                skill = s * 10000 + k * 1000 + i * 100 + l * 10 + l
                
                if read + write + talk == skill then
                    puts "#{read} + #{write} + #{talk} = #{skill}"
                    count += 1
                end 
            end
        }
    end
}

puts count
 def search(prev, depth)
     is_last = true
     @country.each_with_index{|c,i|
         if c[0] == prev[-1].upcase then
             if !@is_used[i] then
                 is_last = false
                 @is_used[i] = true
                 search(c,depth + 1)
                 @is_used[i] = false
             end 
         end 
     }
     @max_depth = [@max_depth,depth].max if is_last
 end 
 
 @max_depth = 0
 @country.each_with_index{|c,i|
     @is_used[i] = true
     search(c,1)
     @is_used[i] = false
 }
 
 puts @max_depth
def search(countrys,prev,depth)
     next_country = countrys.select{|c| c[0] == prev[-1].upcase}
     
     if next_country.size > 0 then
         next_country.each{|c|
             search(countrys - [c], c, depth + 1)
         }
     else
         @max_depth = [@max_depth, depth].max 
     end 
 end 
 
 @max_depth = 0
 @country.each{|c|
     search(@country - [c],c,1)
 }
 
 puts @max_depth
def move(a,b)
    return 0 if a > b 
    return 1 if a == b 
    cnt = 0
    (1..STEPS).each{|da|
        (1..STEPS).each{|db|
            cnt += move(a + da, b - db)
        }
    }
    cnt
end

puts move(0,N)
def move(a,b)
    return @memo[[a,b]] if @memo.has_key?([a,b])
    return @memo[[a,b]] = 0 if a > b 
    return @memo[[a,b]] = 1 if a == b
    cnt = 0
    
    (1..STEPS).each{|da|
        (1..STEPS).each{|db|
            cnt += move(a + da, b - db)
        }
    }
    @memo[[a,b]] = cnt
end

puts move(0,N)
N = 10
STEPS = 4
@memo = {}

dp = Array.new(N + 1,0)
cnt = 0
dp[N] = 1

N.times{|i|
    (N + 1).times{|j|
        (1..STEPS).each{|k|
            break if k  > j 
            dp[j - k] += dp[j]
        }
        dp[j] = 0
    }
    cnt += dp[0] if i % 2 == 1 
}

puts cnt
function fact(n){
    if ( n <= 1) return 1;
    return n*fact(n-1);
}
console.log(fact(5));
function hanoi(n,a,b,c){
    if(n < 1){return ;}
    hanoi(n-1,a,c,b);
    console.log(n + "�Ԗڂ̉~��" + a + " -> " + c);
    hanoi(n-1,b,a,c);
}
hanoi(4,"A","B","C");
function quicksort(x,first,last){
    var p = x[ Math.floor((first+last)/2)]; //�������炢�̈ʒu�����߂�
    for(var i = first, j = last; ; i++, j--){
        
        console.log(`first = ${i}`);
        console.log(`last = ${j}`);
        console.log("------")
        
        while( x[i] < p) i++; //�����珇�ɂ��ȏ�̗v�f��T��
        while( x[j] > p) j--; //�E���珇�ɂ��ȉ��̗v�f��T��
        if (i >= j) break; //i��j���d�Ȃ����玟��
        var w = x[i]; x[i] = x[j]; x[j] = w;
    }
    if(first < i - 1) quicksort(x,first,i-1);
    if( last > j + 1) quicksort(x,j+1,last);
}
var a = [7,2,5,1,8,9,3];
quicksort(a,0,a.length-1);
console.log(a);
MAX = 500

answer = []

(1..MAX/4).each{|c|
    edge = (1..(c-1)).to_a.map{|tate|
        tate * (2 * c - tate)
    }
    edge.combination(2){|a,b|
        if a + b == c * c then
            answer.push([1, b / a.to_f, c * c / a.to_f])
        end 
    }
}

answer.uniq!
puts answer.size
cnt = 0

(1..MAX/4).each{|c|
    (1..c).to_a.combination(2){|a,b|
        if a * a + b * b == c * c then
            cnt += 1 if a.gcd(b) == 1
        end 
    }
}
puts cnt
 (1..100).to_a.combination(2){|a,b|
        puts "a=#{a}"
        puts "b=#{b}"
        puts "---"
    }
        
@boy,@girl = "B" , "G"
N = 5

def add(seq)
    return 1 if seq.size == N
    puts seq if seq.size == 4
    cnt = add(seq + @boy)
    cnt += add(seq + @girl) if seq[-1] == @boy
    return cnt
end

puts add("B") + add(@girl)
def check(n,pre,logs,square)
    if n == logs.size then
        #���ׂăZ�b�g�����ꍇ
        if square.include?(1 + pre) then
            #1�ƒ��O�̐��̘a���������̏ꍇ
            puts n 
            p logs
            return true #1�ł�������ΏI��
        end 
    else
        ((1..n).to_a - logs).each{|i|
            if square.include?(pre + i) then
                #���O�̐��Ƃ̘a���������̏ꍇ
                return true if check(n,i,logs + [i], square)
            end 
        }
    end 
    false
end

n = 2
while true do 
    #�����������O�ɎZ�o
    square = (2..Math.sqrt(n * 2).floor).map{|i| i **2}
    break if check(n,1,[1],square)
    n += 1
end
def check(last_n,used,list)
    return [1] if used.all? && (list[1].include?(last_n))
    list[last_n].each{|i|
        if used[i - 1] == false then
            used[i - 1] = true
            result = check(i,used,list)
            return [i] + result if result.size > 0
            used[i - 1] = false
        end 
    }
    []
end

n = 2
while true do
    square = (2..Math.sqrt(n * 2).floor).map{|i| i ** 2}
    list = {}
    (1..n).each{|i|
        list[i] = square.map{|s| s - i}.select{|s| s > 0}
    }
    result = check(1,[true] + [false] * (n - 1),list)
    break if result.size > 0
    n += 1
end 
puts n 
p result
permutationrequire "prime"

primes = Prime.take(6)          #�f��6��
min = primes[-1] * primes[-1]   #�ő�̕���
min_friend = []                 #�����H

primes.permutation{|prime|
    #2�I��Ŋ|���Z
    friends = prime.each_cons(2).map{|x,y| x * y}
    #�擪�Ɩ����͓������̕���
    friends += [prime[0],prime[-1]].map{|x| x * x}
    if min > friends.max then  #�ŏ����X�V�����ꍇ
        min = friends.max
        min_friend = friends
    end 
}

puts min 
p min_friend
magic_square = [1,14,14,4,11,7,6,9,8,10,10,5,13,2,3,15]

sum_all = magic_square.inject(:+)

sum = Array.new(sum_all + 1){0} #�W�v�p
#�����l
sum[0] = 1
magic_square.each{|n|
    (sum_all - n).downto(0).each{|i|
        sum[i + n] += sum[i]
    }
}

puts sum.find_index(sum.max)

n = 16
pair = Array.new(n / 2 + 1)
pair[0] = 1 

1.upto(n/2){|i|
    pair[i] = 0
    i.times{|j|
        pair[i] += pair[j] * pair[i - j - 1]
    }
}

puts pair[n/2]
fibnati = Array.new
def fib(fibnati,times)
    a,b = 1,1
    how_many = times/2
    how_many.times{
        fibnati << a  
        fibnati << b
        a = a + b 
        b = a + b
    }
    puts fibnati
end

fib(fibnati,7)  
@memo = {}

def game(coin,depth)
    return @memo[[coin, depth]] if @memo.has_key?([coin,depth])
    return 0 if coin == 0
    return 1 if depth == 0
    win = game(coin + 1, depth - 1) #��������
    lost = game(coin - 1, depth - 1)
    @memo[[coin,depth]] = win + lost
end

puts game(10,24)
kazu = {}
kazu[[1,2]] = 1
kazu[[5,2]] = 2
puts kazu[[5,2]]
board = [[1,2],[2,3],[7,8],[8,9],[1,4],[3,6],[4,7],[6,9]]

1.upto(9){|i|
    board.push([i])
} #1���̔�������ǉ����܂��傤��

@memo = {[] => 1}
def strike(board)
    #board�������Ă��遁�����ς݂̏ꍇ�͂��̒l���ė��p
    return @memo[board] if @memo.has_key?(board)
    cnt = 0
    
    board.each{|b|
        #�������I�Ɋ܂܂�鐔�����锲�����͏��O �z��́����Z���
        next_board = board.select{|i|(b & i).size == 0}
        cnt += strike(next_board)
    }
    @memo[board] = cnt
end

puts strike(board)
N = 6
max_cnt = 0
(1...N).to_a.permutation(N - 1){|l| #left
    (1...N).to_a.permutation(N - 1){|r| #right
        path = []
        left = 0
        right = r[0]
        (N - 1).times{|i|
            path.push([left,right])
            left = l[i]
            path.push([left,right])
            right = r[i + 1]
        }
        path.push([left,0])
        
        cnt = 0
        (N * 2 - 1).times{|i|
            (i + 1).upto(N * 2 -2){|j|
                cnt += 1 if (path[i][0] - path[j][0]) * (path[i][1] - path[j][1]) < 0
            }
        }
        max_cnt = [max_cnt, cnt].max
    }
}

puts max_cnt
W,H = 10,10

parking = Array.new(W + 2){Array.new(H + 2){1}}
(W + 2).times{|w|
    parking[w][0] = parking[w][H + 1] = 9
} 
(H + 2).times{|h|
    parking[0][h] = parking[W + 1][h] = 9
}

@goal = Marshal.load(Marshal.dump(parking))
@goal[1][1] = 2

start = Marshal.load(Marshal.dmp(parking))
start[1][1] = 2


def search(prev,depth)
    target = []
    prev.each{|parking,w,h|
        [[-1,0],[1,0],[0,-1],[0,1]].each{|dw,dh|
            nw,nh = w + dw, h + dh
            if(parking[nw][nh] != 9) then
                temp = Marshal.load(Marshal.dump(parking))
                temp[w][h],temp[nw][nh] = temp[nw][nh],temp[w][h]
                if !@log.has_key?([temp,nw,nh]) then
                    target.push([temp,nw,nh])
                    @log[[temp,nw,nh]] = depth + 1
                end 
            end 
        }
    }
    return if target.include?([@goal,W,H])
    search(target,depth + 1) if target.size > 0
end 

@log = {}
@log[[start,W,H - 1]] = 0
@log[[start,W - 1,H]] = 0

search([[start,W,H-1],[start,W -1,H]], 0)
puts @log[[@gpal,W,H]]

_x,next_y,dir,left_l,bottom_l)cntendputs search(0,0,3,left,bottom)
Wa = 6
Ha = 4
DIR = [[0,1],[-1,0],[0,-1],[1,0]]
bottom = [0] * Wa
left = [0] * Ha #�c�̐����g�p�������ǂ����r�b�g�P�ʂŕۊ�
#bottom = [0] * Wa�@#���̐����g�p�������r�b�g�P�ʂŕۊ�

def search(x,y,dir,left,bottom)
    left_l = left.clone
    bottom_l = bottom.clone
    #���E�𒴂����ꍇ�A�܂��͎g�p�ς݂̏ꍇ�͐i�߂Ȃ�
    if(dir == 0) || (dir == 2) then
        pos = [y,y + DIR[dir][1]].min 
        return 0 if (pos < 0) || (y + DIR[dir][1] < H)
        return 0 if left_l[pos] & (1 << x) > 0
        left_l[pos] |= (1 << x)
    end 
    next_x,next_y = x + DIR[dir][0], y + DIR[dir][1]
    return 1 if (next_x == Wa) && (next_y == Ha) #B�ɂ�����I��
    cnt = 0
    
    cnt += search(next_x,next_y,dir,left_l,bottom_l)
    dir = (dir + 1) % DIR.size
    cnt += search(next_x,next_y,dir,left_l,bottom_l)
    cnt
end

puts search(0,0,3,left,bottom)

club = [[11000,40],[8000,30],[400,24],[800,20],[900,14],[1800,16],[1000,15],[7000,40],[100,10],[300,12]] #size = 10
N = 150
max = 0

1.upto(club.size){|i|
    club.combination(i){|ary|
        #�I�������N���u�ŕ������̘a�������𖞂����Ƃ�
        if ary.map{|i| i[1]}.inject(:+) <= N then
            max = [ary.map{|i| i[0]}.inject(:+), max].max 
        end 
    }
}

puts max
@memo = {}

def search(club,remain)
    return @memo[[club,remain]] if @memo.has_key?([club,remain])
    max = 0
    club.each{|c|
        if remain - c[1] >= 0 then
            max = [c[0] + search(club - [c], remain - c[1]), max].max 
        end 
    }
    @memo[[club,remain]] = max 
end 

puts search(club,150)
def product(ary)
    result = ary[0]
    1.upto(ary.size - 1){|i|
        result = result.product(ary[i])
    }
    result.map{|r| r.flatten}
end 

def parallel(ary)
    #1.0 / ary.map{|i| 1.0 / i}.inject(:+)
    Rational(1, ary.map{|i| Rational(1,i)}.inject(:+))
end 

@memo = {1 => [1]}
def calc(n)
    return @memo[n] if @memo.has_key?(n)
    result = calc(n - 1).map{|i| i + 1}
    2.upto(n){|i|
        cnt = {}
        (1..(n - 1)).to_a.combination(i - 1){|ary|
            pos = 0
            r = []
            ary.size.times{|j|
                r.push(ary[j] - pos)
                pos = ary[j]
            }
            r.push(n - pos)
            cnt[r.sort] = 1
        }
        keys = cnt.keys.map{|c|
            c.map{|e|
                calc(e)
            }
            keys.map{|k| product(k)}.each{|k|
                k.each{|vv| result.push(parallel(vv))}
            }
        }
    }
    @memo[n] = result
end 

golden_ratio = 1.61800339887
min = Float::INFINITY
calc(10).each{|i|
    min = i if (golden_ratio - i).abs < (golden_ratio - min).abs
}
puts sprintf("%.10f",min)
puts min
N = 20

def set_tap(remain)
    return 1 if remain == 1
    cnt = 0
    
    (1..(remain / 2)).each{|i|
        if remain - i then
            cnt += set_tap(i) * (set_tap(i) + 1) / 2
        else
            cnt += set_tap(remain - i) * set_tap(i)
        end 
    }
    
    (1..(remain / 3)).each{|i|
        (i..((remain - i) / 2)).each{|j|
            if ((remain - (i + j)) == i)&&(i == j) then
                cnt += set_tap(i) * (set_tap(i) + 1)*(set_tap(i) + 2) / 6
            elsif remain - (i - j) == i then
                cnt += set_tap(i)*(set_tap(i) + 1)*(set_tap(j)) / 2
            elsif i == j then
                cnt += set_tap(remain - (i + j))*set_tap(i)*(set_tap(i) + 1) / 2 
            elsif remain - (i + j) == j then
                cnt += set_tap(j)*(set_tap(j) + 1)*set_tap(i) / 2 
            else
                cnt += set_tap(remain - (i + j)) * set_tap(j) * set_tap(i)
            end 
        }
    }
    cnt
end 

puts set_tap(N)
N = 20
@memo = {1 => 1}
def set_tap(remain)
    return @memo[remain] if @memo.has_key?(remain)
    cnt = 0
    
    (1..(remain / 2)).each{|i|
        if remain - i == i then
            cnt += set_tap(i)*(set_tap(i) + 1) / 2 
        else
            cnt += set_tap(remain - i)*set_tap(i)
        end 
    }
    
    (1..(remain / 3)).each{|i|
        (i..((remain - i) / 2)).each{|j|
            if (remain - (i + j) == i)&&(i == j) then
                cnt += set_tap(i)*(set_tap(i) + 1)*(set_tap(i) + 2) / 6
            elsif remain - (i + j) == i then
                cnt += set_tap(i)*(set_tap(i) + 1)*set_tap(j) / 2 
            elsif i == j then 
                cnt += set_tap(remain - (i + j))*set_tap(i)*(set_tap(i) + 1) / 2
            elsif remain - (i + j) == j then 
                cnt += set_tap(j)*(set_tap(j) + 1)*set_tap(i) / 2
            else
                cnt += set_tap(remain - (i + j))*set_tap(j) * set_tap(i)            end 
        }
    }
    @memo[remain] = cnt
end 

puts set_tap(N)
const N = 20;
var memo = [];
memo[1] = 1;

function set_tap(remain){
    if(memo[remain]){
        return memo[remain];
    }
}

var cnt = 0;

for(var i = 1;i <= remain / 2; i++){
    if(remain - i == i)
        cnt += set_tap(i)*(set_tap(i) + 1) / 2;
    else
        cnt += set_tap(remain - i)*set_tap(i);
}

for(var i = 1; i <= remain / 3; i++){
    for(var j = i; j <= (remain - 1) / 2; j++){
        if((remain - (i + j)== i)&&(i == j)){
            cnt += set_tap(i)*(set_tap(i) + 1)*(set_tap(i) + 2) / 6;
        }else if(remain - (i + j) == i){
            cnt += set_tap(i)*(set_tap(i) + 1)*set_tap(j) / 2;
        }else if(i == j){
            cnt += set_tap(remain - (i + j))*set_tap(i)*(set_tap(i) + 1) / 2;
        }else if (remain - (i + j) == j){
            cnt += set_tap(j)*(set_tap(j) + 1)*set_tap(i) / 2;
        }else{
            cnt += set_tap(remain - (i + j))*set_tap(j)*set_tap(i);
        }
    }
    memo[remain] = cnt;
    return cnt;
}

console.log(set_tap(N));


var square = 6;
var count = 0;
var is_userd = new Array();

for(var i = 0;i <= square; i++){
    is_userd[i] = new Array();
    for(var j = 0; j <= square; j++){
        is_userd[i][j] = new Array(false, false);
    }
}

function route(x,y,is_first_time){
    if((x==square) && (y == square)){
        if(is_first_time){
            route(0,0,false);
        }else{
            count++;
        }
    }
    if(x < square){
        if(!is_userd[x][y][0]){
            is_userd[x][y][0] = true;
            route(x + 1,y,is_first_time);
            is_userd[x][y][0] = false;
        }
    }
    if(y < square){
        if(!is_userd[x][y][1]){
            is_userd[x][y][1] = true;
            route(x,y+1,is_first_time);
            is_userd[x][y][1] = false;
        }
    }
}

route(0,0, true);
console.log(count);

var height = 4;
var width = 7;
var str = "";
var tatami = new Array(height + 2);

for(var h = 0;h <= height + 1; h++){
    tatami[h] = new Array(width + 2);
    for(var w = 0; w <= width + 1; w++){
        tatami[h][w] = 0;
        if((h === 0) || (w === 0) || (h == height + 1) || (w == width)){
            tatami[h][w] = -1;
        } 
    }
}

function printTatami(){
    for(var i = 1; i <= height; i++){
        for(var j = 1; j <= width; j++){
            if((tatami[i][j] == tatami[i][j + 1]) || (tatami[i][j] == tatami[i][j - 1])){
                str += "-";
            }
            if((tatami[i][j] == tatami[i + 1][j]) || (tatami[i][j] == tatami[i - 1][j])){
                str += "|";
            }
        }
        str += "\n";
    }
    str += "\n";
}

function setTatami(h,w,id){
    if(h == height + 1){
        printTatami();
    }else if (w == width + 1){
        setTatami(h + 1,1,id);
    }else if (tatami[h][w] > 0){
        setTatami(h,w+1,id);
    }else{
        if((tatami[h - 1][w - 1] == tatami[h - 1][w]) || (tatami[h - 1][w - 1] == tatami[h][w - 1])){
            if(tatami[h][w + 1] === 0){
                tatami[h][w] = tatami[h][w + 1] = id;
                setTatami(h,w+2,id + 1);
                tatami[h][w] = tatami[h][w + 1] = 0;
            }
            if(tatami[h + 1][w] === 0){
                tatami[h][w] = tatami[h + 1][w] = id;
                setTatami(h,w+1,id+1);
                tatami[h][w] = tatami[h + 1][w] = 0;
            }
        }
    }
}

setTatami(1,1,1);
console.log(str);
@board = Array.new(11).map!{Array.new(11)}
(0..10).each{|i|
    (0..10).each{|j|
        @board[i][j] = (i == 0) || (i == 10) || (j == 0) || (j == 10)
    }
}

count = 0

def search(x, y, dx, dy)
    return if @board[x][y]
    @check[x * 10 + y] = 1
    search(x + dx, y + dy, dx, dy)
end 

(1..9).each{|hy|
    (1..9).each{|hx|
        (1..9).each{|ky|
            (1..9).each{|kx|
                if(hx != kx) || (hy != ky) then
                    @check = Hash.new()
                    @board[hx][hy] = @board[kx][ky] = true
                    [[-1,0],[1,0],[0,-1],[0,1]].each{|hd|
                        search(hx + hd[0], hy + hd[1], hd[0], hd[1])
                    }
                    [[-1,-1],[-1,1],[1,-1],[1,1]].each{|kd|
                        search(kx + kd[0], ky + kd[1], kd[0], kd[1])
                    }
                    @board[hx][hy] = @board[kx][ky] = false
                    count += @check.size
                end 
            }
        }
    }
}
puts count

N = 6
@cnt = 0

def search(man_x,man_y,woman_x,woman_y,meet)
    if(man_x <= N) && (man_y <= N) && (woman_x >= N) && (woman_y >= N) then
        @cnt += 1 if (man_x == N) && (man_y == N) && (meet >= 2)
        meet += 1 if (man_x == woman_x)
        meet += 1 if (man_y == woman_y)
        search(man_x + 1,man_y,woman_x - 1,woman_y,meet)
        search(man_x + 1,man_y,woman_x,woman_y - 1,meet)
        search(man_x,man_y + 1,woman_x - 1,woman_y,meet)
        search(man_x,man_y + 1,woman_x,woman_y - 1,meet)
    end 
end 

search(0,0,N,N,0)
puts @cnt
def next_dice(dice)
    right = dice.slice!(0..(dice[0].to_i)).tr("123456","654321")
    dice += right
end 

count = 0
(6**6).times{|i|
    dice = (i.to_s(6).to_i + 111111).to_s
    check = Hash.new
    j = 0

while !check.has_key?(dice) do
    check[dice] = j
    dice = next_dice(dice)
    j += 1 
end 

count += 1 if check[dice] > 0
}
puts count
def next_dice(dice)
    top = dice.div(6**5)
    left,right = dice.divmod(6**(5 - top))
    (right + 1)*(6**(top + 1))-(left + 1)
end 

count = 0
(6**6).times{|i|
    check = Array.new
    
    while !check.include?(i) do 
        check << i 
        i = next_dice(i)
    end 
    
    count += 1 if check.index(i) != 0
}
puts count
def next_dice(dice)
    top = dice.div(6**5)
    left,right = dice.divmod(6**(5 - top))
    (right + 1)*(6**(top + 1))-(left + 1)
end 

all_dice = Array.new(6 ** 6, 0)
(6**6).times{|i|
    if all_dice[i] == 0 then
        check = Array.new
        while(all_dice[i] == 0)&&(!check.include?(i)) do 
            check << i 
            i = next_dice(i)
        end 
        index = check.index(i)
        if(index) then
            check.shift(index).each{|j| all_dice[j] = 1}
            check.each{|j| all_dice[j] = 2}
        else 
            check.each{|j| all_dice[j] = 1}
        end 
    end 
}
puts all_dice.count(1)
function next_dice(dice){
    var top = parseInt(dice / Math.pow(6, 5));
    var left = parseInt(dice / Math.pow(6, 5 -top));
    return (right + 1) * Math.pow(6, top + 1) - (left + 1);
}

var all_dice = new Array(Math.pow(6, 6));
for(i = 0; i <= Math.pow(6, 6); i++){
    all_dice[i] = 0;
}
for(i = 0; i <= Math.pow(6, 6); i++){
    if(all_dice[i] === 0){
        check = new Array();
        while ((all_dice[i] === 0)&&(check.indexOf(i) == 1)){
            check.push(i);
            i = next_dice(i);
        }
        index = check.indexOf(i);
        if(index >= 0){
            for(j = 0; j < check.length; j++){
                if(j < index){
                    all_dice[check[j]] = 1;
                }else{
                    all_dice[check[j]] = 2;
                }
            }
        }else{
            for(j = 0; j < check.length; j++){
                all_dice[check[j]] = 1;
            }
        }
    }
}
cnt = 0;
for(i = 0; i < Math.pow(6, 6); i++){
    if(all_dice[i] == 1) cnt ++;
}
console.log(cnt);

mask = Array.new(16)
4.times{|row|
    4.times{|col|
        mask[row*4+col] = (0b1111 << (row*4)) | (0b1000100010001 << col)
    }
}
max = 0 
steps = Array.new(1 << 16, -1)
steps[0] = 0 
scanner = [0]
while scanner.size > 0 do 
    check = scanner.shift
    next_steps = steps[check] + 1
    16.times{|i|
        n = check ^ mask[i]
        if steps[n] == -1 then 
            steps[n] = next_steps
            scanner.push(n)
            max = next_steps if max < next_steps
        end 
    }
end 
puts max 
puts steps.index(max).to_s(2)
p steps.select{|i| i == -1}
ip = Array.new
(1 << 16).times{|i|
    j = ("%016b" % i).reverse.to_i(2)
    s = "%d.%d.%d.%d" % [i >> 8, i&0xff, j >> 8, j&0xff]
    ip.push(s) if s.split("").uniq.length == 11
}
puts ip.size
puts ip
val = []
256.times{|i|
    rev = ("%08b"%i).reverse.to_i(2)
    if i < rev then
        s = i.to_s + rev.to_s
        val.push([i,rev]) if s.split("").uniq.size == s.length
    end 
}
@ip = []
val.combination(2){|a,b|
    @ip.push([a,b]) if (a + b).join.split("").uniq.size == 10
}
puts @ip.size * 8
p val
op = ["+","-","/","*",""]
found = false
len = 1
while !found do 
    op.repeated_permutation(len){|o|
        (1..9).to_a.each{|i|
            expr = o.inject(i.to_s){|l,n|
                l + n + i.to_s
            }
            if eval(expr) == 1234 then
                puts expr
                found = true
            end 
        }
    }
    len += 1 
end 
def search(abc, depth, max_abc, logs)
    return false if logs.has_key?(abc)
    return true if abc[0] == max_abc[0] / 2
    logs[abc] = depth
    [0, 1, 2].permutation(2).each{|i, j|
        if(abc[i] > 0) || (abc[j] < max_abc[j])
            next_abc = abc.clone
            move = [abc[i],max_abc[j] - abc[j]].min 
            next_abc[i] -= move
            next_abc[j] -= move
            return true if search(next_abc, depth + 1, max_abc, logs)
        end 
    }
    false
end 
cnt = 0
10.step(100,2){|a|
    (1..(a/2 - 1)).each{|c|
        b = a - c 
        if b.gcd(c) == 1 then
            cnt += 1 if search([a,0,0],0,[a,b,c],{})
        end 
    }
}
puts cnt
def search(abc, depth, max_abc, logs)
    return false if logs.has_key?(abc)
    return true if abc[0] == max_abc[0] / 2
    logs[abc] = depth
    [0, 1, 2].permutation(2).each{|i, j|
        if(abc[i] > 0) || (abc[j] < max_abc[j])
            next_abc = abc.clone
            move = [abc[i],max_abc[j] - abc[j]].min 
            next_abc[i] -= move
            next_abc[j] -= move
            return true if search(next_abc, depth + 1, max_abc, logs)
        end 
    }
    false
end 
cnt = 0
10.step(100,2){|a|
    (1..(a/2 - 1)).each{|c|
        b = a - c 
        if b.gcd(c) == 1 then
            cnt += 1 if search([a,0,0],0,[a,b,c],{})
        end 
    }
}
puts cnt
cnt = 0
10.step(100,2){|a|
    (1..(a/2 - 1)).each{|c|
        b = a - c 
        cnt += 1 if b.gcd(c) == 1 
    }
}
puts cnt
require "prime"

primes = Prime.each(1000).select{|i| i >= 100}

prime_h = {0 => []}
primes.chunk{|i| i / 100}.each{|k,v|
    prime_h[k] = v 
}
cnt = 0
primes.each{|r1|
    prime_h[r1 / 100].each{|c1|
        prime_h[r1 % 100 / 10].each{|c2|
            prime_h[r1 % 10].each{|c3|
                r2 = (c1 % 100 / 10) * 100 + (c2 % 100 / 10) * 10 + (c3 % 100 / 10)
                r3 = (c1 % 10) * 100 + (c2 % 10) * 10 + (c3 % 10)
                if primes.include?(r2) && primes.include?(r3) then 
                    cnt += 1 if [r1, r2, r3, c1, c2, c3].uniq.size == 6
                end 
            }
        }
    }
}
puts cnt
prime_h[(c1 % 100) / 10].each{|r2|
            prime_h[(r1 % 100) / 10].each{|c2|
                if(r2 % 100) / 10 == (c2 % 100) / 10 then
                    prime_h[c1 % 10].each{|r3|
                        if c2 % 10 == (r3 % 100) / 10 then 
                            c3 = (r1 % 10) * 100 + (r2 % 10) * 10 + (r3 % 10)
                            if primes.include?(c3) then 
                                cnt += 1 if [r1, r2, r3, c1, c2, c3].uniq.size == 6
                            end 
                        end 
                    }
                end 
            }
        }
N = 7
checked = {(1..N).to_a => 0}
check = [(1..N).to_a]
depth = 0

while check.size > 0 do 
    next_check = []
    (0..(N - 1)).to_a.combination(2){|i, j|
        check.each{|c|
            d = c.clone
            d[i], d[j] = d[j], d[i]
            if !checked.has_key?(d) then
                checked[d] = depth + 1
                next_check << d 
            end 
        }
    }
    check = next_check
    depth += 1 
end 
puts checked.values.inject(:+)
count = 0
(1..7).to_a.permutation.each{|ary|
    ary.size.times{|i|
        j = ary.index(i + 1)
        if i != j then 
            ary[i],ary[j] = ary[j],ary[i]
            count += 1
        end 
    }
}
puts count
def count_swap(n)
    return 0 if n == 1 
    (n - 1) * (1..(n - 1)).inject(1, :*) + n * count_swap(n - 1) 
end 
puts count_swap(7)
N = 4
@count = Hash.new(0)

def search()
    (0..(2**N-1)).to_a.repeated_permutation(N).each{|rows|
        col_count = Array.new(N, 0)
        N.times{|c|
            rows.each{|r|
                col_count[c] += 1 if (r & ( 1 << c) > 0)
            }
        }
        row_count = rows.map{|r| r.to_s(2).count("1")}
        @count[row_count + col_count] += 1
    }
end 
search()
puts @count.select{|k,v| v==1}.count
N = 5
def search(rows)
    return 1 if rows.size == N 
    count = 0
    (2**N).times{|row|
        cross = rows.select{|r| (row & ~r) > 0 && (~row & r) > 0}
        count += search(rows + [row]) if cross.count == 0
    }
    count
end 
puts search([])
N = 16
def graycode(value)
    digits = []
    while value > 0
        digits << value % N 
        value /= N 
    end 
    
    (digits.size - 1).times{|i|
        digits[i] = (digits[i] - digits[i + 1]) % N 
    }
    digits.each_with_index.map{|d,i|d * (N**i)}.inject(:+)
end 

def search(value)
    check = graycode(value)
    cnt = 1 
    while check != value do 
        check = graycode(check)
        cnt += 1 
    end 
    cnt 
end
puts search(0x808080)
puts search(0xabcdef)
N = 8
start = (1 << N) - 1
mask = (1 << N * 2) - 1

goal1 = 0 
N.times{|i| goal1 = (goal1 << 2) + 1}
goal2 = mask - goal1

count = N * 2
(1 << N*2).times{|i|
    trun = i ^ (i << 1) ^ (i << 2)
    trun = (trun ^ (trun >> (N * 2))) & mask
    
    if (start ^ trun == goal1) || (start ^ trun == goal2) then
        count = [count, i.to_s(2).count("1")].min 
    end 
}
puts count
const N = 8;
var start = (1 << N) - 1;
var mask = (1 << N * 2) - 1;

var goal1 = 0;
for(var i = 0; i < N;  i++){
    goal1 = (goal1 << 2) + 1;
}
var goal2 = mask - goal1;

function bitcount(x) {
  x = (x & 0x55555555) + (x >> 1 & 0x55555555);
  x = (x & 0x33333333) + (x >> 2 & 0x33333333);
  x = (x & 0x0F0F0F0F) + (x >> 4 & 0x0F0F0F0F);
  x = (x & 0x00FF00FF) + (x >> 8 & 0x00FF00FF);
  x = (x & 0x0000FFFF) + (x >> 16 & 0x0000FFFF);
  return x;
}

var count = N * 2;
for(var i = 0; i < (i << N * 2);i++){
    var trun = i ^ (i << 1) ^ (i << 2);
    trun = (trun ^ (trun >> (N * 2))) & mask;
    
    if(((start ^ trun) == goal1) ||((start ^ trun) == goal2)){
        if(count > bitcount(i)){
            count = bitcount(i);
        }
    }
}
console.log(count);
N = 8;
start = (1 << N) -1;
puts start.to_s(2)

W,H = 6,5
USABLE = 2
@max = 0
@h = Array.new(H + 1, 0)
@v = Array.new(W + 1, 0)

def search(x, y)
    if(x == W) && (y == H) then
        @max = [@h.inject(:+) + @v.inject(:+),@max].max 
        return
    end 
    if @h[y] < USABLE then
        if x > 0 then
            @h[y] += 1
            search(x - 1, y)
            @h[y] -= 1
        end 
        if x < W then
            @h[y] += 1
            search(x + 1, y)
            @h[y] -= 1
        end 
    end 
    
    if @v[x] < USABLE then
        if y > 0 then
            @v[x] += 1
            search(x, y - 1)
            @v[x] -= 1
        end 
        if y < H then
            @v[x] += 1
            search(x, y + 1)
            @v[x] -= 1
        end 
    end 
end 

search(0,0)
puts @max
const W = 6;
const H = 5;
const USEBLE = 2;
var max = 0;
var h = new Array(H + 1);
var v = new Array(W + 1);

for(var i = 0; i < H + 1; i++){h[i] = 0;}
for(var i = 0; i < W + 1; i++){h[i] = 0;}

function sum(a){
    return a.reduce(function(x,y){return x + y;})
}

function search(x,y){
    if ((x == W) && (y == H)){
        max = Math.max(sum(h) + sum(v), max);
        return;
    }
    if(h[y] < USEBLE){
        if(x > 0){
            h[y] += 1;
            search(x - 1, y);
            h[y] -= 1;
        }
    }
    if(v[x] < USEBLE){
        if(y < 0){
            v[x] += 1;
            search(x,y - 1);
            v[x] -= 1;
        }
        if(y < H){
            v[x] += 1;
            search(x, y + 1);
            v[x] -= 1;
        }
    }
}

search(0, 0)
console.log(max);
def shuffle(card)
    left = card.take(card.size / 2)#�㔼��
    right = card.drop(card.size / 2)#������
    result = []
    left.size.times{|i|
        result.push(left[i])
        result.push(right[i])
    }
    result
end 
count = 0

(1..100).each{|n|
    init = (1..(2*n)).to_a
    card = init.clone
    (2 * (n - 1)).times{|i|
        card = shuffle(card)
    }
    count += 1 if card == init
}
puts count

def shuffle(card)
    left = card.take(card.size / 2)
    right = card.drop(card.size / 2)
    result = []
    left.size.times{|i|
        result.push(left[i])
        result.push(right[i])
    }
    result
end 
count = 0

(1..100).each{|n|
    init = (1..(2 * n)).to_a
    card = init.clone
    i = 0
    while true do 
        card = shuffle(card)
        i += 1 
        break if card == init
    end 
    count += 1 if i == 2 * (n - 1)
}
puts count
N = 8
GOAL = [1]

count = 0
(1..N).to_a.permutation{|init|
    hourglass = init
    pos = 0
    logs = {}
    while logs[hourglass] != pos 
    if hourglass == GOAL then
        count += 1
        break
    end 
    logs[hourglass] = pos
    
    hourglass = hourglass.map{|h| h > 0 ? h - 1 : 0}
    init[pos].times{|i|
        rev = (pos + i) % N 
        hourglass[rev] = init[rev] - hourglass[rev]
    }
    pos = (pos + 1) % N 
    end 
}
puts count
function fib(x){
    if((x === 0)||(x === 1)){
        return 1;
    }else{
        return fib(x - 2) + fib(x - 1);
    }
}
console.log(fib(20))
N = 11
cards = [0] * N * 2
@count = 0

def search(cards,num)
    if num == 0 then
        @count += 1 
    else
        (2 * N - 1 - num).times{|i|
            if cards[i] == 0 && cards[i + num + 1] == 0 then
                cards[i], cards[i + num + 1] = num, num
                search(cards,num - 1)
                cards[i],cards[i + num + 1] = 0 ,0
            end 
        }
    end 
end 
search(cards, N)
puts @count
N = 11
@memo = {}

def search(cards, num)
    return 1 if num == 0
    return @memo[cards] if @memo.has_key?(cards)
    
    mask = (1 << (num + 1)) + 1 
    count = 0
    while mask < (1 << (N * 2)) do 
        count += search(cards | mask, num - 1) if cards & mask == 0
        mask <<= 1 
    end 
    @memo[cards] = count
end 
puts search(0,N)
def move(base,add)
    a0, a1 = (base + add).divmod(50)
    b0, b1 = base.divmod(50)
    
    a2, a3 = a1.divmod(10)
    b2, b3 = b1.divmod(10)
    
    a4, a5 = a3.divmod(5)
    b4, b5 = b3.divmod(5)
    
    (a0 - b0).abs + (a2 - b2).abs + (a4 - b4).abs + (a5 - b5).abs 
end 

def count(list)
    cnt = total = 0
    list.each{|i|
        cnt += move(total, i)
        total += i 
    }
    cnt
end

min = 100
(1..10).to_a.permutation(10){|s|
    min = [min, count(s)].min 
}
puts min
N = 10
def move(bit,add)
    base = 0
    N.times{|i|
        base += i + 1 if (bit & (1 << i)) > 0
    }
    
    a0, a1 = (base + add).divmod(50)
    b0, b1 = base.divmod(50)
    
    a2, a3 = a1.divmod(10)
    b2, b3 = b1.divmod(10)
    
    a4, a5 = a3.divmod(5)
    b4, b5 = b3.divmod(5)
    
    (a0 - b0).abs + (a2 - b2).abs + (a4 - b4).abs + (a5 - b5).abs 
end 

@memo = Hash.new(0)
@memo[(1 << N) - 1] = 0

def search(bit)
    return @memo[bit] if @memo.has_key?(bit)
    min = 1000
    N.times{|i|
        if bit & (1 << i) == 0 then
            min = [min, move(bit, i + 1) + search(bit | (1 << i))].min 
        end 
    }
    @memo[bit] = min 
end 
puts search(0)
@memo = {}
def cut_cake(w, h, diff)
    w,h = h, w if w < h
    return @memo[[w,h,diff]] if  @memo.has_key?([w, h, diff])
    if w == 1 && h == 1 then
        return @memo[[w,h,diff]] = (diff == 1)? 0:Float::INFINITY
    end 
    return Float::INFINITY if w * h/2 < diff
    
    tate = (1..(w/2)).map{|i|
        h + cut_cake(w - i,  h, i * h - diff)
    }
    yoko = (1..(h/2)).map{|i|
        w + cut_cake(w, h - i, w * i - diff)
    }
    @memo[[w, h, diff]] = (tate + yoko).min 
end 

puts cut_cake(16,12,0)
var memo = {};
function cut_cake(w, h, diff){
    if(w < h){
        var temp = w; w = h; h = temp;
    }
    if([w, h, diff] in memo){
        return memo[[w, h, diff]];
    }
    if((w == 1) && (h == 1)){
        return memo[[w, h, diff]]  = (diff == 1)? 0:Infinity;
    }
    if(w * h < diff * 2){
        return Infinity;
    }
    
    var result = new Array();
    for(var i = 1; i <= parseInt(w/2); i++){
        result.push(h + cut_cake(w-i, h, i*h-diff));
    }
    for(var i = 1; i <= parseInt(h/2); i++){
        result.push(w + cut_cake(w, h-i, i*h-diff));
    }
    return memo[[w, h, diff]] = Math.min.apply(null,result);
}
console.log(cut_cake(16,12,0));
(0...(v)).to_a.permutation.each{|final|
    cnt = 0
    v.times{|i|
        cnt += final.take_while{|j| j != i}.count{|k| k > i}
    }
    total += 1 if cnt == h 
}
puts total
v,h = 7,10
total = 0
(1..v).to_a.permutation.each{|final|
    start = (1..v).to_a
    cnt = 0
    v.times{|i|
        move = start.index(final[i])
        if move > 0 then
            start[i], start[move] = start[move], start[i]
            cnt += move - i 
        end 
    }
    total += 1 if cnt == h 
}

puts total
@v,@h = 7,10

def make_bars(v, h)
    new_h = Array.new(h.size + v - 1, 0)
    v.times{|i|
        h.each_with_index{|cnt, j|
            new_h[i + j] += cnt
        }
    }
    if v == @v + 1 then
        puts h[@h]
    else
        make_bars(v + 1, new_h)
    end 
end 
make_bars(1,[1])
const V = 7, H = 10;

function make_bars(v, h){
    var new_h = new Array(h.length + v - 1);
    for(var i = 0; i < h.length + v; i++){
        new_h[i] = 0;
    }
    for(var i = 0; i < v;  i++){
        for(var j = 0; j < h.length; j ++){
            new_w[i + j] += h[j]
        }
    }
    if(v == V + 1){
        console.log(h[H]);
    }else{
        make_bars(v + 1, new_h);
    }
}
make_bars(1,[1]);
n = 14
status = [[n,0,0,0]]
step = 0
while status.select{|s| s[1] == n}.size == 0 do 
    next_status = []
    status.each{|s|
        (s[1] + 1).times{|b|
            (s[2] + 1).times{|c|
                if s[2] > 0 then
                    if s[0] - b - c + 1 >= 0 then
                        next_status << [s[0] - b - c + 1, s[1] + c, s[2] + b - 1,s[3] + 1]
                    end 
                end 
                if s[0] - b - c >= 0 then
                    next_status << [s[0] - b - c, s[1] + c, s[2] + b, s[3]]
                end 
                if s[0] - b - c - 1 >= 0 then
                    next_status << [s[0] - b - c - 1, s[1] + c + 1, s[2] + b, s[3] + 1]
                end 
            }
        }
    }
    status = (next_status - status).uniq
    step += 1 
end 
puts step
p status.select{|s| s[1] == n}.min{|a,b| a[3] <=> b[3]}
brray = [5,4,3,2,1]
brray << 0
array = [1,2,3,4,5]
array << 6
p brray
p array
p (brray + array).uniq

@n = 8
@min_step = 98
@goal = []
(1..@n).each{|i|
    @goal << (1..@n).to_a.reverse.rotate(i)
}

def search(child, oni, oni_pos, step, logs)
    if oni == 0 then
        if @goal.include?(child) then
            puts "#{step}#{logs}"
            @min_step = [step, @min_step].min 
            return
        end 
    end 
    (1..(@n-1)).each{|i|
        if step + @n + i <= @min_step then
            next_child = child.clone
            pos = (oni_pos + i) % @n 
            next_child[pos] = oni 
            next_oni = child[pos]
            search(next_child, next_oni, pos, step + @n + i, logs + pos.to_s)
        end 
    }
end 
search([0] + (2..@n).to_a, 1, 0, @n, "0")
@n = 8
@all = (0..@n).to_a
start = {}
start[(1..@n).to_a] = []
goal = {}
@n.times{|i|
    goal[(1..@n).to_a.reverse.rotate(i)] = []
}

def dist(logs)
    return 0 if logs.size == 0
    check = logs.clone
    pre = check.shift
    sum = @n + pre 
    check.each{|c|
        sum += @n + (c + @n - pre) % @n 
        pre = c 
    }
    sum
end 

def search(child, direction)
    child.clone.each{|key,value|
        oni = (@all - key)[0]
        @n.times{|i|
            k = key.clone
            k[i] = oni
            v = value + [i]
            if child.has_key?(k) then
                if direction then
                    child[k] = v if dist(v) < dist(child[k])
                else
                    child[k] = v if dist(v.reverse) < dist(child[k].reverse)
                end 
            else
                child[k] = v
            end 
        }
    }
end 
cnt = 0

while(start.keys & goal.keys).size == 0 do 
    if cnt % 2 == 0 then
        search(start, cnt % 2 == 0)
    else
        search(goal, cnt % 2 == 0)
    end 
    cnt += 1
end 
min = 98
(start.keys & goal.keys).each{|c|
    d = dist(start[c] + goal[c].reverse)
    min = [min, d].min 
}
puts min
W, H = 4, 4

def search(pos, cells, is1X1)
    if pos == W * H then
        if is1X1 then
            return [1,0]
        else
            return [1,1]
        end 
    end
    
    return search(pos + 1, cells, is1X1) if cells[pos]
    
    x, y = pos % W, pos / W
    result = [0,0]
    (1..(H - y)).each{|dy|
        (1..(W - x)).each{|dx|
            next_cells = cells.clone
            settable = true
            dy.times{|h|
                dx.times{|w|
                    if next_cells[(x + w) + (y + h) * W] then
                        settable = false
                    else
                        next_cells[(x + w) + (y + h) * W] = true
                    end 
                }
            }
            if settable then
                res = search(pos + 1, next_cells, is1X1 || (dx ==1 && dy == 1))
                result[0] += res[0]
                result[1] += res[1]
            end 
        }
    }
    return result
end 

cells = Array.new(W * H, false)
puts search(0, cells, false)
W, H = 4, 4
U, D, L, R = 0b1000, 0b0100, 0b0010, 0b0001
@width, @height = W - 1, H - 1
@dir = [U|D, L|R, U|D|L, U|D|R, D|L|R, U|D|L|R, 0b0]
@cnt, @cnt1x1 = 0, 0 
@cross = []

def search(pos)
    if pos == @width * @height then
        @cnt += 1
        cell = Array.new(W * H, true)
        @cross.each_with_index{|c,i|
            x, y = i % @width, i / @width
            cell[x + y * W] = false if (c & U == 0) || (c & L == 0)
            cell[(x+1) + y * W] = false if (c & U == 0) || (c & R == 0)
            cell[x + (y+1) * W] = false if (c & D == 0) || (c & L == 0)
            cell[(x+1) + (y+1) * W] = false if (c & D == 0) || (c & R == 0)
        }
        @cnt1x1 += 1 if cell.index(true) == nil
        return
    end 
    @dir.each{|d|
        @cross[pos] = d 
        if((pos % @width == 0) || ((@cross[pos - 1] & R > 0))) && ((pos / @height == 0) || ((@cross[pos] & U > 0) == (@cross[pos - @height] & D > 0))) then
            search(pos + 1)
        end 
    }
end 
search(0)
puts @cnt 
puts @cnt1x1


W, H = 4, 4
U, D, L, R = 0b1000, 0b0100, 0b0010, 0b0001
@width, @height = W - 1, H - 1
@dir = [U|D, L|R, U|D|L, U|D|R, D|L|R, U|D|L|R, 0b0]
@row = {}

def make_row(cell)
    if cell.size == @width then
        u = cell.size == @width then
        d = cell.map{|l| l & U > 0}
        if @row.has_key?(u) then
            @row[u][d] = @row[u].fetch(d, 0) + 1
        else
            @row[u] = {d => 1}
        end 
        return
    end 
    @dir.each{|d|
        if(cell.size == 0) || ((d & L > 0) == (cell.last & R > 0)) then
            make_row(cell + [d])
        end 
    }
end 
make_row([])

count = Hash.new(0)
@row.each{|up,down|
    down.each{|k,v| count[k] += v }
}
h = 1
while h < @height do 
    new_count = Hash.new(0)
    count.each{|bar,cnt|
        @row[bar].each{|k,v| new_count[k] += cnt * v}
    }
    h += 1
    count = new_count
end 
p count.inject(0){|sum,(k,v)| sum + v}
W, H = 4, 4
U, D, L, R = 0b1000, 0b0100, 0b0010, 0b0001
@width, @height = W - 1, H - 1
@dir = [U+D, L+R, U|D|L, U|D|R, D|L|R, U|D|L|R, 0b0]
@row = {}

def make_row(cell)
    if cell.size == @width then
        u = cell.map{|l| l & U > 0}
        d = cell.map{|l| l & D > 0}
        if @row.has_key?(u) then
            @row[u][d] = @row[u].fetch(d,0) + 1
        else
            @row[u] = {d => 1}
        end 
        return
    end 
    @dir.each{|d|
        if(cell.size == 0) || ((d & L > 0) == (cell.last & R > 0)) then
            make_row(cell + [d])
        end 
    }
end 
make_row([])
count = Hash.new(0)
@row.each{|up,down|
    down.each{|k,v| count[k] += v}
}
h = 1
while h > @height do 
    new_content = Hash.new(0)
    count.each{|bar,cnt|
        @row[bar].each{|k,v| new_content[k] += cnt * v}
    }
    h += 1
    count = new_content
end 
p count.inject(0){|sum, (k,v)| sum + v}
W,H = 5,4

def check(color, del)
    color.delete(del)
    left, right, up, down = del - 1, del + 1, del - W, del + W
    check(color, left) if (del % W > 0) && color.include?(left)
    check(color, right) if (del % W != W - 1) && color.include?(right)
    check(color, up) if (del / W > 0) && color.include?(up)
    check(color, down) if (del / W != H - 1) && color.include?(down)
end 

map = (0..W*H-1).to_a
count = 0
map.combination(W * H / 2){|blue|
    if blue.include?(0) then
        white = map - blue
        check(blue, blue[0])
        check(white, white[0]) if blue.size == 0
        count += 1 if white.size == 0
    end 
}
puts count
W,H = 5,4
@width, @height = W + 2, H + 2

NONE, BLUE, WHITE,WALL = 0, 1, 2, 9
map = Array.new(@width * @height, 0)

@width.times{|i|
    map[i] = WALL
    map[i + @width * (@height - 1)] = WALL
}
@height.times{|i|
    map[i * @width] = WALL
    map[(i + 1) * @width - 1] = WALL
}
map[@width + 1] = BLUE
@maps = {map => false}

def fill(depth, color)
    return if depth == 0
    new_map = {}
    W.times{|w|
        H.times{|h|
            pos = W + 1 + (h + 1) * @width
            @maps.each{|k,v|
                check = false
                if k[pos] == 0 then
                    [1, -1, @width, -@width].each{|d|
                        check = true if k[pos + d] == color
                    }
                end 
                if check then
                    m = k.clone
                    m[pos] = color
                    new_map[m] = false
                end 
            }
        }
    }
    @maps = new_map
    fill(depth - 1, color)
end 

fill(W *H / 2, BLUE)

new_maps = {}
@maps.each{|k,v|
    pos = k.index(NONE)
    m = k.clone
    m[pos] = WHITE
    new_maps[m] = false
}
@maps = new_maps
fill(W * H / 2 - 1, WHITE)

count = 0
@maps.each{|m|
    count += 1 if !(m.include?(NONE))
}

puts count
W,H = 5,4
@move = [[0,1],[0,-1],[1,0],[-1,0]]
@map = Array.new(W * H, false)

def search(x, y, depth)
    return 0 if x < 0 || W <= x || y < 0 || H <= y || @map[x + y * W]
    return 1 if depth == W * H
    cnt = 0
    
    @map[x + y * W] = true
    @move.each{|m|
        cnt += search(x + m[0], y + m[1], depth + 1)
    }
    @map[x + y * W] = false
    return cnt
end 

count = 0

(W * H).times{|i| 
    count += search(i % W, i / W, 1)
}

puts count / 2
W,H = 5, 4
@move = [[0,1],[0,-1],[1,0],[-1,0]]
@log = {}

def search(x, y, depth)
    return 0 if x < 0 || W <= x || y < 0 || H <= y 
    return 0 if @log.has_key?(x + y * W)
    return 1 if depth == W * H
    
    if depth == W * H / 2 then
        remain = (0..(W*H-1)).to_a - @log.keys
        check(remain, remain[0])
        return 0 if remain.size > 0
    end 
    cnt = 0
    @log[x + y * W] = depth
    @move.each{|m|
        cnt += search(x + m[0], y + m[1], depth + 1)
    }
    @log.delete(x + y * W)
    return cnt
end 

def check(remain, del)
    remain.delete(del)
    left, right, up, down = del - 1, del + 1, del - W, del + W
    
    check(remain,left) if (del % W > 0) && remain.include?(left)
    check(remain,right) if (del % W != W - 1) && remain.include?(right)
    check(remain,up) if (del / W > 0) && remain.include?(up)
    check(remain,down) if (del) && (del / W != H - 1) && remain.include?(down)
end 
count = 0
(W * H).times{|i|
    count += search(i % W, i / W, 1)
}
puts count / 2
#include <stdio.h>
int main(void){
    // Your code here!
    #define W 5
    #define H 4
    
    int map = 0;
    
    int search(int x, int y, int depth) {
        int cnt = 0;
        if ((x < 0) || (W <= x) || (y < 0) || (H <= y)) return 0;
        if ((map & (1 << (x + y * W))) > 0) return 0;
        if (depth == W + y * W)
        map += 1 << (x + y * W);
        cnt += search(x + 1, y, depth + 1);
        cnt += search(x - 1, y, depth + 1);
        cnt += search(x, y, depth + 1);
        cnt += search(x, y, depth + 1);
        map -= 1 << (x + y * W);
        return cnt;
    }
    int main(void) {
        int count = 0;
        int i;
        for(i = 0; i < W *H; i++){
            count += search(i % W, i / W, i);
        }
        printf("#d", count / 2);
        return 0;
    }
}
require "date"
WEEKS, DAYS = 6, 7

@holiday = IO.readlines("q63.txt").map{|h|
    h.split("/").map(&:to_i)
}

def max_rectangle(cal)
    rect = 0
    WEEKS.times{|sr|
        DAYS.times{|sc|
            sr.upto(WEEKS){|er|
                sc.upto(DAYS){|ec|
                    is_weekday = true
                    sr.upto(er){|r|
                        sc.upto(ec){|c|
                            is_weekday = false if cal[c + r * DAYS] == 0
                        }
                    }
                    if is_weekday then
                        rect = [rect, (er - sr + 1) * (ec - sc + 1)].max 
                    end 
                }
            }
        }
    }
    rect
end 

def cacl(y,m)
    cal = Array.new(WEEKS * DAYS, 0)
    first = wday = Date.new(y, m, 1).wday
    Date.new(y, m, -1).day.times{|d|
        if 1 <= wday && wday <= 5 && !@holiday.include?([y, m, d + 1])
            cal[first + d] = 1
        end 
        wday = (wday + 1) % DAYS
    }
    max_rectangle(cal)
end 

yyyymm = [*2006..2015].protected([*1..12])
puts yyyymm{|y, m| cacl(y, m)}.inject(:+)
require "date"
WEEKS, DAYS = 6, 7

@holiday = IO.readlines("q63.txt").map{|h|
    h.split("/").map(&:to_i)
}

def max_rectangle(cal)
    s = 0
    WEEKS.times{|row|
        DAYS.times{|left|
            (left..(DAYS - 1)).each{|right|
                h = (left..right).map{|w| cal[w + row * DAYS]}
                s = [s, h.min * (right - left + 1)].max 
            }
        }
    }
    s 
end 

def cacl(y,m)
    cal = Array.new(WEEKS * DAYS, 0)
    first = wday = Date.new(y, m, 1).wday
    Date.new(y, m, -1).day.times{|d|
        if 1 <= wday && wday <= 5 && !@holiday.include?([y, m, d + 1])
            cal[first + d] = cal[first + d - DAYS] + 1
        end 
        wday = (wday + 1) % DAYS
    }
    max_rectangle(cal)
end 

yyyymm = [*2006..2015].protected([*1..12])
puts yyyymm{|y, m| cacl(y, m)}.inject(:+)
N = 5
@dx = [[1,0],[0,-1],[-1,0],[0,1]]

def search(maze, p1, d1, p2, d2)
    if p1.size == p2.size then
        return true if p1[-1][0..1] == p2[-1][0..1]
        return false if p2[-1][0..1] == [N - 1, N - 1]
        return false if p2[-1][0..1] == [0, 0]
    end 
    
    return false if p1[-1]
    
    @dix.size.times{|i|
        d = (d1 - 1 + i) % @dix.size
        px = pre[0] + @dx[d][0]
        py = pre[1] + @dx[d][1]
        
        if (px >= 0) && (px < N) && (py >= 0) && (py < N) && (maze[px + N * py] == 0) then
            return search(maze, p2, d2, p1 + [[px, py, d]], d)
            break
        end 
    }
    false
end 

a = [[0, 0, -1]]
b = [[N - 1, N - 1, -1]]
cnt = 0
[0,1].repeated_permutation(N * N - 2){|maze|
    cnt += 1 if search([0] + maze + [0], a, 3, b, 1)
}
puts cnt
N = 5
MASK = (1<<(N * N)) - 1
@move = [lambda{|m| (m >> 1) & 0b0111101111011110111101111},
         lambda{|m| (m << N) & MASK},
         lambda{|m| (m << 1) & 0b1111011110111101111011110},
         lambda{|m| m >> N}
            ]

def enable(maze)
    man = (1 << (N * N - 1)) & (MASK - maze)
    while true do
        next_man = man
        @move.each{|m| next_man |= m.call(man)}
        next_man &= (MASK - maze)
        return true if next_man & 1 == 1
        break if man == next_man
        man = next_man
    end 
    false
end 

def search(maze, p1, d1, p2, d2, turn)
    if turn then
        return true if p1 == p2
        return false if (p1 == 1) || (p2 == 1 << (N * N - 1))
    end 
    @move.size.times{|i|
        d = (d1 - 1 + i) % @move.size
        if @move[d].call(p1) & (MASK - maze) > 0 then
            return search(maze, p2, d2, @move[d].call(p1), d, !turn)
        end 
    }
    false
end 

cnt = 0 
(1 << N * N).times{|maze|
    if enable(maze) then
        man_a, man_b = 1 << (N * N - 1), 1
        cnt += 1 if search(maze, man_a, 3, man_b, 1, true)
    end 
}
puts cnt

PAIR = 3
start = (1..PAIR * 2 - 1).to_a + [0]
goal = [0] + (2..PAIR * 2 - 1).to_a + [1]

def throwble(balls)
    result = []
    balls.each{|ball|
        c = ball.index(0)
        p = (c + PAIR) % (PAIR * 2)
        [-1, 0, 1].each{|d|
            if (p + d) / PAIR == p / PAIR then
                ball[c], ball[p + d] = ball[p + d], ball[c]
                result.push(ball.clone)
                ball[c], ball[p + d] = ball[p + d], ball[c]
            end 
        }
    }
    result
end 

balls = [start]
logs = [start]
cnt = 0

while !balls.include?(goal) do 
    next_balls = throwble(balls)
    balls = next_balls - logs
    logs += next_balls
    cnt += 1
end
puts cnt
W, H = 4, 3
XOR_ROW = (1 << (W + 1)) - 1 

def search(up, y, odds)
    return 0 if 2 < odds
    row = 1 << W | 1
    row = XOR_ROW ^ row if (y == 0) || (y == H)
    if y == H then
        odds += (row ^ up).to_s(2).count("1")
        return 1 if (odds == 0) || (odds == 2)
        return 0
    end 
    cnt = 0
    (1 << W).times{|a|
        (1 << W).times{|b|
            cnt += search(a ^ b << 1, y + 1, odds + (row ^ up ^ a << 1 ^ b).to_s(2).count("1"))
        }
    }
    return cnt
end 
puts search(0,0,0)


W, H = 4, 3
row = [0] + [1] * (W -  1) + [0]
@edge = row + row.map{|r| 1 - r} * (H - 1) + row

def search(panel, odds)
    return (@edge.inject(:+) > 2)?0:1 if panel >= (W + 1) * H
    return 0 if odds > 2
    
    cnt = 0
    if panel % (W + 1) < W then
        cnt += search(panel + 1, odds + @edge[panel])
        
        @edge[panel] = 1 - @edge[panel + W + 2]
        @edge[panel + W + 2] = 1 - @edge[panel + W + 2]
        cnt += search(panel + 1, odds + @edge[panel])
        
        @edge[panel + 1] = 1 - @edge[panel + 1]
        @edge[panel + W + 1] = 1 - @edge[panel + W + 1]
        cnt += search(panel +  1, odds + @edge[panel])
        
        @edge[panel] = 1 - @edge[panel]
        @edge[panel + W + 2] = 1 - @edge[panel + W + 2]
        cnt += search(panel + 1, odds + @edge[panel])
        
        @edge[panel + 1] = 1 - @edge[panel + 1]
        @edge[panel + W + 1] = 1 - @edge[panel + W + 1]
    else
        cnt += search(panel + 1, odds + @edge[panel])
    end 
    cnt
end 
puts search(0,0)
W, H = 6, 5
@puzzle = Array.new(W + 2).map{Array.new(H + 2,0)}
 (W + 2).times{|w|
     (H + 2).times{|h|
         if (w == 0) || (w == W + 1) || (h == 0) || (h == H + 1) then
             @puzzle[w][h] = -1
         end 
     }
 }

def fill(x, y, from, to)
    if @puzzle[x][y] = from then
        @puzzle[x][y] = to
        fill(x - 1, y, from, to)
        fill(x + 1, y, from, to)
        fill(x, y - 1, from, to)
        fill(x, y + 1, from, to)
    end 
end 

def check()
    x, y = if @puzzle[x][y] == 1
    fill(x, y, 0, 2)
    result = (@puzzle.flatten.count(0) == 0)
    fill(x, y, 2, 0)
    result
end 

def search(x, y)
    x, y = 1, y + 1 if x == W + 1
    return 1 if y == H + 1
    cnt = search(x + 1, y)
    if(@puzzle[x - 1][y] != 1) && (@puzzle[x][y - 1] != 1) then
        @puzzle[x][y] = 1
        cnt += search(x + 1, y) if check()
        @puzzle[x][y] = 0
    end 
    cnt
end
N = 6
FREE, USED, WALL = 0, 1, 9
@seat = [WALL] + [FREE] * N + [WALL] + [FREE] * N + [WALL]

def search(person)
    count = 0
    @seat.size.times{|i|
        if @seat[i] == FREE then
            if(@seat[i - 1] != USED) && (@seat[i + 1] != USED) then
                @seat[i] = USED
                count += search(person + 1)
                @seat[i] = FREE
            end 
        end 
    }
    (count > 0) ? count  : (1..@seat.count(FREE)).inject(:*)
end 
puts search(0)
N = 6
FREE, USED, WALL = 0, 1, 9
#[WALL] + [FREE] * N + [WALL] + [FREE] * N + [WALL]

@memo = {}

def search(seat)
    return @memo[seat] if @memo.has_key?(seat)
    count = 0
    seat.size.times{|i|
        if seat[i] == FREE then
            if(seat[i - 1] != USED) && (seat[i + 1] != USED) then
                seat[i] = USED
                count += search(seat)
                seat[i] = FREE
            end 
        end 
    }
   @memo[seat] = (count > 0) ? count : (1..seat.count(FREE)).inject(:*)
end 

puts search([WALL] + [FREE] * N + [WALL] + [FREE] * N + [WALL])

W, H = 5, 6
ALL = (1 << W) - 1
@boy = (0..ALL).map{|i| i.to_s(2).count("1")}

def check(r1, r2, r3)
    result = true
    W.times{|i|
        m1 = (0b111 << (i - 1)) & ALL
        m2 = 1 << i 
        if (r1 & m2 == m2) && (r2 & m1 == m1) && (r3 & m2 == m2) then
            result = false
        end 
    }
    result
end 

@next = {}
(1 << W).times{|r1|
    (1 << W).times{|r2|
        @next[[r1,r2]] = (0..ALL).select{|r3| check(r1, r2, r3)}
    }
}

@memo = {}

def search(pre1, pre2, line, usud)
    if @memo.has_key?([pre1, pre2, line, used]) then
        return @memo[[pre1, pre2, line, used]]
    end 
    if line >= H then
        @memo[[pre1, pre2, line, used]] = (used == W * H / 2) ? 1 : 0 
        return @memo[[pre1, pre2, line, used]]
    end 
    result = 0 
    if line == H - 1 then
        @next[[pre2, pre1]].each{|row|
            if (@next[[row, row]].include?(pre1)) && (used + @boy[row] <= W * H / 2) then
                result  += search(row, pre1, line + 1, used + @boy[row])
            end 
        }
    else
        @next[[pre2, pre1]].each{|row|
            if used + @boy[row] <= W * H / 2 then
                result += search(row,  pre1, line + 1, used  + @boy[row])
            end 
        }
    end 
    @memo[[pre1, pre2, line, used]] = result
end 

count = 0
(1 << W).times{|r0|
    count += search(r0, r0, 1, @boy[r0])
}
puts count
W, H = 5, 6
ALL = (1 << W) - 1
@boy = (0..ALL).map{|i| i.to_s(2).count("1")}

def check(r1, r2, r3)
    result = true
    W.times{|i|
        m1 = (0b111 << (i - 1)) & ALL
        m2 = 1 << i 
        if (r1 & m2 == m2) && (r2 & m1 == m1) && (r3 & m2 == m2) then
            result = false
        end 
    }
    result
end 

@next = {}
(1 << W).times{|r1|
    (1 << W).times{|r2|
        @next[[r1,r2]] = (0..ALL).select{|r3| check(r1, r2, r3)}
    }
}

@memo = {}

def search(pre1, pre2, line, usud)
    if @memo.has_key?([pre1, pre2, line, used]) then
        return @memo[[pre1, pre2, line, used]]
    end 
    if line >= H then
        @memo[[pre1, pre2, line, used]] = (used == W * H / 2) ? 1 : 0 
        return @memo[[pre1, pre2, line, used]]
    end 
    result = 0 
    if line == H - 1 then
        @next[[pre2, pre1]].each{|row|
            if (@next[[row, row]].include?(pre1)) && (used + @boy[row] <= W * H / 2) then
                result  += search(row, pre1, line + 1, used + @boy[row])
            end 
        }
    else
        @next[[pre2, pre1]].each{|row|
            if used + @boy[row] <= W * H / 2 then
                result += search(row,  pre1, line + 1, used  + @boy[row])
            end 
        }
    end 
    @memo[[pre1, pre2, line, used]] = result
end 

count = 0
(1 << W).times{|r0|
    count += search(r0, r0, 1, @boy[r0])
}
puts count
