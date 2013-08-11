module UnrealScript.Engine.PrimitiveComponentFactory;

import UnrealScript.Core.UObject;

extern(C++) interface PrimitiveComponentFactory : UObject
{
	public @property final bool CastShadow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x80) != 0; }
	public @property final bool CastShadow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x80; } return val; }
	public @property final bool HiddenEditor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x40) != 0; }
	public @property final bool HiddenEditor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x40; } return val; }
	public @property final bool HiddenGame() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x20) != 0; }
	public @property final bool HiddenGame(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x20; } return val; }
	public @property final bool BlockRigidBody() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x10) != 0; }
	public @property final bool BlockRigidBody(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x10; } return val; }
	public @property final bool BlockNonZeroExtent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x8) != 0; }
	public @property final bool BlockNonZeroExtent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x8; } return val; }
	public @property final bool BlockZeroExtent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x4) != 0; }
	public @property final bool BlockZeroExtent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x4; } return val; }
	public @property final bool BlockActors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2) != 0; }
	public @property final bool BlockActors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2; } return val; }
	public @property final bool CollideActors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
	public @property final bool CollideActors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
}
