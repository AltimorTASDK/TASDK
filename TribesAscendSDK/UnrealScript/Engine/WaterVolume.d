module UnrealScript.Engine.WaterVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.PhysicsVolume;
import UnrealScript.Engine.Actor;

extern(C++) interface WaterVolume : PhysicsVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.WaterVolume")()); }
	private static __gshared WaterVolume mDefaultProperties;
	@property final static WaterVolume DefaultProperties() { mixin(MGDPC!(WaterVolume, "WaterVolume Engine.Default__WaterVolume")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mTouch;
			ScriptFunction mPlayEntrySplash;
			ScriptFunction mUnTouch;
			ScriptFunction mPlayExitSplash;
		}
		public @property static final
		{
			ScriptFunction Touch() { mixin(MGF!("mTouch", "Function Engine.WaterVolume.Touch")()); }
			ScriptFunction PlayEntrySplash() { mixin(MGF!("mPlayEntrySplash", "Function Engine.WaterVolume.PlayEntrySplash")()); }
			ScriptFunction UnTouch() { mixin(MGF!("mUnTouch", "Function Engine.WaterVolume.UnTouch")()); }
			ScriptFunction PlayExitSplash() { mixin(MGF!("mPlayExitSplash", "Function Engine.WaterVolume.PlayExitSplash")()); }
		}
	}
	@property final auto ref
	{
		ScriptClass ExitActor() { mixin(MGPC!("ScriptClass", 596)()); }
		SoundCue ExitSound() { mixin(MGPC!("SoundCue", 592)()); }
		ScriptClass EntryActor() { mixin(MGPC!("ScriptClass", 588)()); }
		SoundCue EntrySound() { mixin(MGPC!("SoundCue", 584)()); }
	}
final:
	void Touch(Actor Other, 
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
	void PlayEntrySplash(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayEntrySplash, params.ptr, cast(void*)0);
	}
	void UnTouch(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.UnTouch, params.ptr, cast(void*)0);
	}
	void PlayExitSplash(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayExitSplash, params.ptr, cast(void*)0);
	}
}
