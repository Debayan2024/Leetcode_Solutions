#time complexity = O(n)
#space complexity = O(1)
class Solution:
    def findNumbers(self, nums):
        count_even_digits = 0
        for i in range(0, len(nums)):
            count_digit = 0
            temp = nums[i]
            while temp>0:
                temp=temp//10
                count_digit+=1
            if count_digit%2==0:
                count_even_digits+=1
        return count_even_digits
