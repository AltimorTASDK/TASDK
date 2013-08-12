module UnrealScript.Engine.TriggerStreamingLevel;

import ScriptClasses;
import UnrealScript.Engine.Trigger;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.LevelStreaming;

extern(C++) interface TriggerStreamingLevel : Trigger
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.TriggerStreamingLevel")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mTouch;
		public @property static final ScriptFunction Touch() { return mTouch ? mTouch : (mTouch = ScriptObject.Find!(ScriptFunction)("Function Engine.TriggerStreamingLevel.Touch")); }
	}
	struct LevelStreamingData
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.TriggerStreamingLevel.LevelStreamingData")); }
		@property final
		{
			// WARNING: Property 'Level' has the same name as a defined type!
			bool bShouldBlockOnLoad() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x4) != 0; }
			bool bShouldBlockOnLoad(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x4; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x4; } return val; }
			bool bShouldBeVisible() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
			bool bShouldBeVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
			bool bShouldBeLoaded() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bShouldBeLoaded(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final auto ref ScriptArray!(TriggerStreamingLevel.LevelStreamingData) Levels() { return *cast(ScriptArray!(TriggerStreamingLevel.LevelStreamingData)*)(cast(size_t)cast(void*)this + 488); }
	final void Touch(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherComp, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComp;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Touch, params.ptr, cast(void*)0);
	}
}
