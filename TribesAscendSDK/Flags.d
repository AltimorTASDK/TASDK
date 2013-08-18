module Flags;

public struct Flags(T)
{
private:
	T mInnerVal;

public:
	/**
	 * Check to see if the specified flag is set.
	 * 
	 * Params:
	 * 		flag = The flag to check if is set.
	 * Returns: True if the flag is set, otherwise False.
	 */
	bool HasFlag(T flag) { return (mInnerVal & flag) == flag; }
	/**
	 * Check to see if all the specified flags are set.
	 * 
	 * Params:
	 * 		flags = The flags to check if are set.
	 * Returns: True if the flags are all set, otherwise False.
	 */
	bool HasFlags(T flags) { return (mInnerVal & flags) == flags; }
	/**
	 * Check to see if any of the specified flags are set.
	 * 
	 * Params:
	 * 		flags = The flags to check if are set.
	 * Returns: True if any of the flags are set, otherwise False.
	 */
	bool HasAnyFlags(T flags) { return (mInnerVal & flags) != 0; }

	void SetFlag(T flag) { mInnerVal |= flag; }
	alias SetFlag SetFlags;

	void UnsetFlag(T flag) { mInnerVal &= ~flag; }
	alias UnsetFlag UnsetFlags;
}