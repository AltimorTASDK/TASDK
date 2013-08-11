module UnrealScript.TribesGame.TrDevice_Stealth;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Pack;

extern(C++) interface TrDevice_Stealth : TrDevice_Pack
{
public extern(D):
	@property final auto ref float m_fPulseSpeedThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 2168); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[81519], cast(void*)0, cast(void*)0);
	}
}
