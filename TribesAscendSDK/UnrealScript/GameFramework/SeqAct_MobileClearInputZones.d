module UnrealScript.GameFramework.SeqAct_MobileClearInputZones;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_MobileClearInputZones : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.SeqAct_MobileClearInputZones")); }
	private static __gshared SeqAct_MobileClearInputZones mDefaultProperties;
	@property final static SeqAct_MobileClearInputZones DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_MobileClearInputZones)("SeqAct_MobileClearInputZones GameFramework.Default__SeqAct_MobileClearInputZones")); }
}
