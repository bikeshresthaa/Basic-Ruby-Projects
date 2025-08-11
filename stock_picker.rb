
def stock_picker(array)
  return 0 if array.empty?
  
  buying_date = 0 
  sell_date = 0
  buy_rate = array[0]  
  max_profit = 0
  
  array.each_with_index do |current_rate, index|
    next if index == 0
    
    difference = current_rate - buy_rate 
    
    if max_profit < difference
      max_profit = difference 
      buying_date = array.index(buy_rate) 
      sell_date = index 
    end
    
    if buy_rate > current_rate 
      buy_rate = current_rate 
      
    end
      
    
    
  end
  [buying_date, sell_date]
  

end

puts stock_picker([1, 10, 2, 11])