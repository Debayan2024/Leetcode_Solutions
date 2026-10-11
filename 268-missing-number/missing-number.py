class Solution:
    def missingNumber(self, nums: list[int]) -> int:
        arr = sorted(nums)
        n = len(arr)
        j = 0
        for i in range (0, n):
            if arr[i]!=j:
                return j
            j+=1
        return j