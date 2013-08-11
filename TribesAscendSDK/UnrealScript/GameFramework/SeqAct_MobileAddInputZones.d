module UnrealScript.GameFramework.SeqAct_MobileAddInputZones;

import ScriptClasses;
import UnrealScript.GameFramework.MobileInputZone;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_MobileAddInputZones : SequenceAction
{
	public @property final auto ref MobileInputZone NewZone() { return *cast(MobileInputZone*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref ScriptName ZoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 232); }
}
