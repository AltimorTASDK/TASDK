module UnrealScript.GameFramework.SeqAct_MobileAddInputZones;

import ScriptClasses;
import UnrealScript.GameFramework.MobileInputZone;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_MobileAddInputZones : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.SeqAct_MobileAddInputZones")); }
	private static __gshared SeqAct_MobileAddInputZones mDefaultProperties;
	@property final static SeqAct_MobileAddInputZones DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_MobileAddInputZones)("SeqAct_MobileAddInputZones GameFramework.Default__SeqAct_MobileAddInputZones")); }
	@property final auto ref
	{
		MobileInputZone NewZone() { return *cast(MobileInputZone*)(cast(size_t)cast(void*)this + 240); }
		ScriptName ZoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 232); }
	}
}
