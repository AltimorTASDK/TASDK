module UnrealScript.GameFramework.SeqAct_MobileRemoveInputZone;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_MobileRemoveInputZone : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.SeqAct_MobileRemoveInputZone")); }
	private static __gshared SeqAct_MobileRemoveInputZone mDefaultProperties;
	@property final static SeqAct_MobileRemoveInputZone DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_MobileRemoveInputZone)("SeqAct_MobileRemoveInputZone GameFramework.Default__SeqAct_MobileRemoveInputZone")); }
	@property final auto ref ScriptString ZoneName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 232); }
}
