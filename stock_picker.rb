# As profit = sell - buy So we are intersted in maximium profit
def stock_picker(arr)
  profit = 0
#   two for loop for index purpose with their range
#   frist for loop with the range zero to arr.length - 1 is for buy stock on the day
  for i in 0..(arr.length - 1)
    # second for loop with the range one to arr.length - 1 is sell stock on the day
    for j in (i + 1)..(arr.length - 1)
        if (arr[j] - arr[i] > profit)
            profit = arr[j] - arr[i]
            buyday = i
            sellday = j
        end
    end
end
days = [buyday, sellday]
p days
end

stock_picker([17,3,6,9,15,8,6,1,10]) #[1, 4]