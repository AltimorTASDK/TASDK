module UnrealScript.UDKBase.UDKAnimNodeSeqWeap;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimNodeSequence;

extern(C++) interface UDKAnimNodeSeqWeap : UDKAnimNodeSequence
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKAnimNodeSeqWeap")); }
	private static __gshared UDKAnimNodeSeqWeap mDefaultProperties;
	@property final static UDKAnimNodeSeqWeap DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UDKAnimNodeSeqWeap)("UDKAnimNodeSeqWeap UDKBase.Default__UDKAnimNodeSeqWeap")); }
	@property final auto ref
	{
		ScriptName StingerAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 368); }
		ScriptName ShoulderRocketAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 360); }
		ScriptName SinglePistolAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 352); }
		ScriptName DualPistolAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 344); }
		ScriptName DefaultAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 336); }
	}
}
