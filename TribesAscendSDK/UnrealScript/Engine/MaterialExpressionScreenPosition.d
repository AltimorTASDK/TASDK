module UnrealScript.Engine.MaterialExpressionScreenPosition;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionScreenPosition : MaterialExpression
{
	public @property final bool ScreenAlign() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x1) != 0; }
	public @property final bool ScreenAlign(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x1; } return val; }
}
