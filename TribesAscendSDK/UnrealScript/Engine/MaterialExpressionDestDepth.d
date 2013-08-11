module UnrealScript.Engine.MaterialExpressionDestDepth;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionDestDepth : MaterialExpression
{
public extern(D):
	@property final
	{
		bool bNormalize() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x1) != 0; }
		bool bNormalize(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x1; } return val; }
	}
}
