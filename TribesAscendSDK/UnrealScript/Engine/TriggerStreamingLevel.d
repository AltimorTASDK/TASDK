module UnrealScript.Engine.TriggerStreamingLevel;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Trigger;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.LevelStreaming;

extern(C++) interface TriggerStreamingLevel : Trigger
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.TriggerStreamingLevel")()); }
	private static __gshared TriggerStreamingLevel mDefaultProperties;
	@property final static TriggerStreamingLevel DefaultProperties() { mixin(MGDPC!(TriggerStreamingLevel, "TriggerStreamingLevel Engine.Default__TriggerStreamingLevel")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mTouch;
		public @property static final ScriptFunction Touch() { mixin(MGF!("mTouch", "Function Engine.TriggerStreamingLevel.Touch")()); }
	}
	struct LevelStreamingData
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.TriggerStreamingLevel.LevelStreamingData")()); }
		@property final
		{
			// WARNING: Property 'Level' has the same name as a defined type!
			bool bShouldBlockOnLoad() { mixin(MGBPS!(0, 0x4)()); }
			bool bShouldBlockOnLoad(bool val) { mixin(MSBPS!(0, 0x4)()); }
			bool bShouldBeVisible() { mixin(MGBPS!(0, 0x2)()); }
			bool bShouldBeVisible(bool val) { mixin(MSBPS!(0, 0x2)()); }
			bool bShouldBeLoaded() { mixin(MGBPS!(0, 0x1)()); }
			bool bShouldBeLoaded(bool val) { mixin(MSBPS!(0, 0x1)()); }
		}
	}
	@property final auto ref ScriptArray!(TriggerStreamingLevel.LevelStreamingData) Levels() { mixin(MGPC!("ScriptArray!(TriggerStreamingLevel.LevelStreamingData)", 488)()); }
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
