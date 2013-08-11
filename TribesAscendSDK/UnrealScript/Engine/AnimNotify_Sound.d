module UnrealScript.Engine.AnimNotify_Sound;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimNotify_Sound : AnimNotify
{
public extern(D):
	@property final
	{
		auto ref
		{
			float PitchMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
			float VolumeMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
			float PercentToPlay() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
			ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 72); }
			// WARNING: Property 'SoundCue' has the same name as a defined type!
		}
		bool bIgnoreIfActorHidden() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x2) != 0; }
		bool bIgnoreIfActorHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x2; } return val; }
		bool bFollowActor() { return (*cast(uint*)(cast(size_t)cast(void*)this + 68) & 0x1) != 0; }
		bool bFollowActor(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 68) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 68) &= ~0x1; } return val; }
	}
}
