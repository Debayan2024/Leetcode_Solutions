class Solution:
    def removeElement(self, nums: List[int], val: int) -> int:
        i = 0
        c = len(nums)-1
        while i<c:
            if nums[i]==val and nums[c]!=val:
                nums[i], nums[c]=nums[c], nums[i]
                i+=1
                c-=1
            elif nums[i]!=val:
                i+=1
            else:
                c-=1
        count=0
        for i in range(0, len(nums)):
            if nums[i]!=val:
                count+=1
        return count