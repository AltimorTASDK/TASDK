module UnrealScript.Engine.PrimitiveComponentFactory;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface PrimitiveComponentFactory : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PrimitiveComponentFactory")); }
	private static __gshared PrimitiveComponentFactory mDefaultProperties;
	@property final static PrimitiveComponentFactory DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PrimitiveComponentFactory)("PrimitiveComponentFactory Engine.Default__PrimitiveComponentFactory")); }
	@property final
	{
		bool CastShadow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x80) != 0; }
		bool CastShadow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x80; } return val; }
		bool HiddenEditor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x40) != 0; }
		bool HiddenEditor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x40; } return val; }
		bool HiddenGame() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x20) != 0; }
		bool HiddenGame(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x20; } return val; }
		bool BlockRigidBody() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x10) != 0; }
		bool BlockRigidBody(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x10; } return val; }
		bool BlockNonZeroExtent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x8) != 0; }
		bool BlockNonZeroExtent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x8; } return val; }
		bool BlockZeroExtent() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x4) != 0; }
		bool BlockZeroExtent(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x4; } return val; }
		bool BlockActors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2) != 0; }
		bool BlockActors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2; } return val; }
		bool CollideActors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
		bool CollideActors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
	}
}
