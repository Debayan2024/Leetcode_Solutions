class Solution:
    def removeDuplicates(self, nums: List[int]) -> int:
        freq_num = {}
        arr = nums
        for i in range(0, len(arr)):
            freq_num[arr[i]] = 0
        j = 0
        for k in freq_num:
            arr[j]=k
            j+=1
        return j