module UnrealScript.Engine.MaterialExpressionTime;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionTime : MaterialExpression
{
public extern(D):
	@property final
	{
		bool bIgnorePause() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x1) != 0; }
		bool bIgnorePause(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x1; } return val; }
	}
}
