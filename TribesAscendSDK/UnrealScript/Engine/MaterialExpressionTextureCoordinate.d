module UnrealScript.Engine.MaterialExpressionTextureCoordinate;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionTextureCoordinate : MaterialExpression
{
	public @property final bool UnMirrorV() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x2) != 0; }
	public @property final bool UnMirrorV(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x2; } return val; }
	public @property final bool UnMirrorU() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x1) != 0; }
	public @property final bool UnMirrorU(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x1; } return val; }
	public @property final auto ref float VTiling() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref float UTiling() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref int CoordinateIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
}
