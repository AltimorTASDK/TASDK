module UnrealScript.Engine.MaterialExpressionParticleMacroUV;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionParticleMacroUV : MaterialExpression
{
	public @property final bool bUseViewSpace() { return (*cast(uint*)(cast(size_t)cast(void*)this + 108) & 0x1) != 0; }
	public @property final bool bUseViewSpace(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 108) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 108) &= ~0x1; } return val; }
}
