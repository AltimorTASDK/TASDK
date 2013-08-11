module UnrealScript.GameFramework.SeqAct_Deproject;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Deproject : SequenceAction
{
	public @property final auto ref Vector HitNormal() { return *cast(Vector*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref Vector HitLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 248); }
	public @property final auto ref UObject HitObject() { return *cast(UObject*)(cast(size_t)cast(void*)this + 244); }
	public @property final auto ref float TraceDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref float ScreenY() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref float ScreenX() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
}
