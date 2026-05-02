#time complexity = O(logn)
# space complexity = O(1)
class Solution(object):
    def subtractProductAndSum(self, n):
        nums = n
        result_s = 0
        result_p = 1
        while nums>0:
            last_digit = nums%10
            result_s = (result_s*1)+last_digit
            result_p = (result_p)*last_digit
            nums=nums//10
        return result_p - result_s