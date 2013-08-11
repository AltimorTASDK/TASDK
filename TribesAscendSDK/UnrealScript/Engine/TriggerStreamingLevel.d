module UnrealScript.Engine.TriggerStreamingLevel;

import ScriptClasses;
import UnrealScript.Engine.Trigger;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.LevelStreaming;

extern(C++) interface TriggerStreamingLevel : Trigger
{
	struct LevelStreamingData
	{
		// WARNING: Property 'Level' has the same name as a defined type!
		public @property final bool bShouldBlockOnLoad() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
		public @property final bool bShouldBlockOnLoad(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
		private ubyte __bShouldBlockOnLoad[4];
		public @property final bool bShouldBeVisible() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
		public @property final bool bShouldBeVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
		private ubyte __bShouldBeVisible[4];
		public @property final bool bShouldBeLoaded() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bShouldBeLoaded(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bShouldBeLoaded[4];
	}
	public @property final auto ref ScriptArray!(TriggerStreamingLevel.LevelStreamingData) Levels() { return *cast(ScriptArray!(TriggerStreamingLevel.LevelStreamingData)*)(cast(size_t)cast(void*)this + 488); }
	final void Touch(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* OtherComp, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4] = OtherComp;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[28082], params.ptr, cast(void*)0);
	}
}
