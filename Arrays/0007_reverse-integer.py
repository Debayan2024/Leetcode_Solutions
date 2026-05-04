#time complexity = O(logn)
#space complexity = O(1)
'''
class Solution(object):
    def reverse(self, x):
        if x<0:
            nums = x*-1
        else:
            nums = x
        result = 0
        while nums>0:
            last_digit = nums%10
            result = (result*10)+last_digit
            nums=nums//10
        if x<0:
            return result*-1
        else:
            return result
'''
class Solution(object):
    def reverse(self, x):
        if x<0:
            nums = x*-1
        else:
            nums = x
        result = 0
        while nums>0:
            last_digit = nums%10
            result = (result*10)+last_digit
            nums=nums//10
        if x<0:
            result = result*-1
        if result<-2147483648 or result>2147483647:
            return 0
        return result