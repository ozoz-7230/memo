require "csv"

puts "1(新規でメモを作成) 2(既存のメモを編集する)"

memo_type = gets.to_i

if memo_type == 1
	puts "拡張子を除いたファイル名を入力してください"
	
	file_name = gets.chomp
	
	puts "メモしたい内容を記入してください"
	puts "完了したら Ctrl + D を押下してください"
	
	memo = gets.chomp
	
	CSV.open("#{file_name}.csv","w") do |write|
		
		write << ["#{memo}"]
		
	end
	
elsif memo_type == 2
	
	puts "拡張子を除いたファイル名を入力してください"
	
	file_name = gets.chomp
	
	puts"追加したい内容を入力してください"
	memo = gets.chomp
	
	CSV.open("#{file_name}.csv","a") do |write|
		write << ["#{memo}"]
	end
	
else
	puts "1か2を入力してください"
end

