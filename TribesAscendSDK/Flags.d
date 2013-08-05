module Flags;

public struct Flags(T)
{
	private T mInnerVal;

	public bool HasFlag(T flag) { return (mInnerVal & flag) != 0; }
	public void SetFlag(T flag) { mInnerVal |= flag; }
	public void UnsetFlag(T flag) { mInnerVal &= ~flag; }
}