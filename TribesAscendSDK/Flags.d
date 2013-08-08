module Flags;

public struct Flags(T)
{
	private T mInnerVal;

	public bool HasFlag(T flag) { return (mInnerVal & flag) != 0; }
	public alias HasFlag HasFlags;
	public void SetFlag(T flag) { mInnerVal |= flag; }
	public alias SetFlag SetFlags;
	public void UnsetFlag(T flag) { mInnerVal &= ~flag; }
	public alias UnsetFlag UnsetFlags;
}