# def from Learning ruby p.59
# add keyboard input feature
# gets.chomp -> 去除回傳空白值
# 鍵盤輸入是字串(string)需轉為float，因此用to_f
# function from http://health99.hpa.gov.tw/OnlinkHealth/Onlink_BMI.aspx

BEGIN { puts "安安，現在是 " + Time.now.to_s }
 
def bmi(weight, height)
	weight/(height*height)
end

# Get input value 
puts "請問您的體重是？ (單位: kg)"
weight = gets.chomp.to_f
puts "請問您的身高是？ (單位: m)"
height = gets.chomp.to_f

# calculate bmi
my_bmi= bmi(weight, height)

# check bmi and output statement
if my_bmi < 18.5
	puts "喔...喔..., 您可能過輕囉"
elsif my_bmi.between?(18.5, 24)
	puts "nice body "	
else
	puts "喔...喔..., 您的BMI過高需要洽詢醫生或開始建立健康計劃囉"
end

# puts "Your BMI is " + x = sprintf("%0.2f", my_bmi)
 
END {puts "Hope this info good for you, have health day"}
