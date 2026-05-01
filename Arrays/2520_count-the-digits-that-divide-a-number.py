#time complexity = O(logn)
#space complexity = O(1)
class Solution(object):
    def countDigits(self, num):
        nums = num
        x = num
        result = 0
        while nums>0:
            last_digit = nums%10
            if x%last_digit == 0:
                result+=1
            nums = nums//10
        return result