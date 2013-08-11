module UnrealScript.UDKBase.UDKAnimNodeSeqWeap;

import ScriptClasses;
import UnrealScript.UDKBase.UDKAnimNodeSequence;

extern(C++) interface UDKAnimNodeSeqWeap : UDKAnimNodeSequence
{
	public @property final auto ref ScriptName StingerAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 368); }
	public @property final auto ref ScriptName ShoulderRocketAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref ScriptName SinglePistolAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 352); }
	public @property final auto ref ScriptName DualPistolAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 344); }
	public @property final auto ref ScriptName DefaultAnim() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 336); }
}
