/*
* #99 - Buy Low and Sell High
* You are given a list of integers that represent the daily closing price of a stock. 
* Write a program to maximize your profit by choosing the best day to buy and the best to sell. 
* price.get(i) represents the stock price on a given day i.
* 
* Return the maximum profit. If no profit is possible return 0. You should be able to solve this in O(n) time.
* 
* You may assume the maximum price for this problem is 10000
* 
* Example 1
* Input: prices = [10, 2, 5, 3, 8, 4]
* Output: 6
* 
* If we buy on day 2 the price is 2. If we sell on day 5 the price is 8. 8 -2 = 6; You can not buy on day 2 and sell on day 1.
* 
* Example 2
* Input: prices = [7,6,4,3,1]
* Output: 0
* 
* Explanation: In this case, no transactions are done and the max profit = 0.
*/


public Integer maxProfit(List<Integer> prices){
    //code here
    Integer minPrice = 0;
    Integer maxProfit = 0;
    for (Integer p : prices) {
        if (minPrice == 0) {
            minPrice = p;
            continue;
        }
        if (p < minPrice) {
            minPrice = p;
        }
        if ((p - minPrice) > maxProfit) {
            maxProfit = p - minPrice;
        }
    }
    return maxProfit;
}


/*
* Test 1
List<Integer> prices = new List<Integer>{7, 1, 5, 3, 6, 4};
System.assert(maxProfit(prices) == 5);

* Test 2
List<Integer> prices2 = new List<Integer>{7, 6, 4, 3, 1};
System.assert(maxProfit(prices2) == 0);

* Test 3
List<Integer> prices3 = new List<Integer>{1, 1, 1, 10, 200};
System.assert(maxProfit(prices3) == 199);

* Test 4
List<Integer> prices4 = new List<Integer>{10, 20, 30, 30, 5, 10, 20, 30, 5, 31, 31, 99, 2};
System.assert(maxProfit(prices4) == 94);
*/