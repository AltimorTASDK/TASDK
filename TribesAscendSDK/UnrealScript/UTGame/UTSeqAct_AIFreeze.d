module UnrealScript.UTGame.UTSeqAct_AIFreeze;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_AIFreeze : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSeqAct_AIFreeze")); }
	private static __gshared UTSeqAct_AIFreeze mDefaultProperties;
	@property final static UTSeqAct_AIFreeze DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSeqAct_AIFreeze)("UTSeqAct_AIFreeze UTGame.Default__UTSeqAct_AIFreeze")); }
	@property final
	{
		bool bAllowWeaponFiring() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
		bool bAllowWeaponFiring(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	}
}
