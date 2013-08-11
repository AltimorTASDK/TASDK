module UnrealScript.Engine.MaterialExpressionComponentMask;

import UnrealScript.Engine.MaterialExpression;

extern(C++) interface MaterialExpressionComponentMask : MaterialExpression
{
public extern(D):
	@property final
	{
		// WARNING: Property 'Input' has the same name as a defined type!
		bool A() { return (*cast(uint*)(cast(size_t)cast(void*)this + 136) & 0x8) != 0; }
		bool A(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 136) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 136) &= ~0x8; } return val; }
		bool B() { return (*cast(uint*)(cast(size_t)cast(void*)this + 136) & 0x4) != 0; }
		bool B(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 136) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 136) &= ~0x4; } return val; }
		bool G() { return (*cast(uint*)(cast(size_t)cast(void*)this + 136) & 0x2) != 0; }
		bool G(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 136) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 136) &= ~0x2; } return val; }
		bool R() { return (*cast(uint*)(cast(size_t)cast(void*)this + 136) & 0x1) != 0; }
		bool R(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 136) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 136) &= ~0x1; } return val; }
	}
}
