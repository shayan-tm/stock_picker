def stock_picker(stocks)
results = {}
    stocks.each_with_index do |price1, index1|
        stocks.each_with_index do |price2, index2|
            if index2 > index1
                results[[index1, index2]] = price2 - price1
            end
        end
    end 

    results = results.sort_by {|k, v| v} #sorting the hash by hash values

    final_results = results[-1] #most profitable day
  
    puts "Buy: #{final_results[0][0]}, Sell: #{final_results[0][1]}"
end


puts stock_picker([17,3,6,9,15,8,6,1,10])