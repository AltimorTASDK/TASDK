module UnrealScript.UTGame.UTSeqAct_InfiniteAmmo;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_InfiniteAmmo : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSeqAct_InfiniteAmmo")); }
	private static __gshared UTSeqAct_InfiniteAmmo mDefaultProperties;
	@property final static UTSeqAct_InfiniteAmmo DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSeqAct_InfiniteAmmo)("UTSeqAct_InfiniteAmmo UTGame.Default__UTSeqAct_InfiniteAmmo")); }
	@property final
	{
		bool bInfiniteAmmo() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
		bool bInfiniteAmmo(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	}
}
