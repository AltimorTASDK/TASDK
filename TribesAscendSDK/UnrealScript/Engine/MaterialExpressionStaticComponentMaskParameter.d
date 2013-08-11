module UnrealScript.Engine.MaterialExpressionStaticComponentMaskParameter;

import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialExpressionParameter;
import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionStaticComponentMaskParameter : MaterialExpressionParameter
{
	public @property final auto ref UObject.Pointer InstanceOverride() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 164); }
	public @property final bool DefaultA() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x8) != 0; }
	public @property final bool DefaultA(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x8; } return val; }
	public @property final bool DefaultB() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x4) != 0; }
	public @property final bool DefaultB(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x4; } return val; }
	public @property final bool DefaultG() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x2) != 0; }
	public @property final bool DefaultG(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x2; } return val; }
	public @property final bool DefaultR() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x1) != 0; }
	public @property final bool DefaultR(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x1; } return val; }
	// WARNING: Property 'Input' has the same name as a defined type!
}
