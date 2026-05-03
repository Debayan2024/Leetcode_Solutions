#time complexity = O(logn)
# space complexity = O(1)
'''class Solution(object):
    def addDigits(self, num):
        nums = num
        result = 0
        result_2 = 0
        while nums>0:
            last_digit = nums%10
            result = result+last_digit
            nums = nums//10
        if result == 0:
            return 0
        else:
            while result>0:
                last_digit_2 = result%10
                result_2 = result_2+last_digit_2
                result = result//10
            return result_2'''
        
class Solution(object):
    def addDigits(self, num):
        nums = num
        while nums >= 10:
            result = 0
            while nums > 0:
                last_digit = nums % 10
                result = result + last_digit
                nums = nums // 10
            nums = result
        return nums