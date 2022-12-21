require "csv"

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i

if memo_type == 1
  puts "作成したいファイル名を拡張子を付けずに入力してください"
file_name = gets.chomp
  
  puts "メモしたい内容を入力してください"
  puts "入力が完了したら Ctrl + D で保存してください"
memo = $stdin.read

  CSV.open("#{file_name}.csv", "w") do |csv|
    csv << ["#{memo}"]
  end
  
elsif memo_type == 2
  puts "編集したいファイル名を拡張子を付けずに入力してください"
file_name = gets.chomp

  puts "編集したい内容を入力してください"
  puts "入力が完了したら Ctrl + D で保存してください"
memo = $stdin.read

  CSV.open("#{file_name}.csv", "a") do |csv|
    csv << ["#{memo}"]
  end

else
  puts "1または2を押してください"
end