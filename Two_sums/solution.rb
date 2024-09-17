def twoSum(self, nums: List[int], target: int) -> List[int]:
  lookup = {}
  for i in range(len(nums)):
      find = target - nums[i]
      if find in lookup:
          return [lookup[find],i]
      else:
          lookup[nums[i]] =i
