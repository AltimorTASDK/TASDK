module UnrealScript.Engine.SeqAct_PrepareMapChange;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Latent;

extern(C++) interface SeqAct_PrepareMapChange : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_PrepareMapChange")); }
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) InitiallyLoadedSecondaryLevelNames() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 256); }
			ScriptName MainLevelName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 248); }
		}
		bool bStatusIsOk() { return (*cast(uint*)(cast(size_t)cast(void*)this + 268) & 0x2) != 0; }
		bool bStatusIsOk(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 268) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 268) &= ~0x2; } return val; }
		bool bIsHighPriority() { return (*cast(uint*)(cast(size_t)cast(void*)this + 268) & 0x1) != 0; }
		bool bIsHighPriority(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 268) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 268) &= ~0x1; } return val; }
	}
}
