module UnrealScript.Engine.WaterVolume;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.PhysicsVolume;
import UnrealScript.Engine.Actor;

extern(C++) interface WaterVolume : PhysicsVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.WaterVolume")); }
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
			ScriptFunction Touch() { return mTouch ? mTouch : (mTouch = ScriptObject.Find!(ScriptFunction)("Function Engine.WaterVolume.Touch")); }
			ScriptFunction PlayEntrySplash() { return mPlayEntrySplash ? mPlayEntrySplash : (mPlayEntrySplash = ScriptObject.Find!(ScriptFunction)("Function Engine.WaterVolume.PlayEntrySplash")); }
			ScriptFunction UnTouch() { return mUnTouch ? mUnTouch : (mUnTouch = ScriptObject.Find!(ScriptFunction)("Function Engine.WaterVolume.UnTouch")); }
			ScriptFunction PlayExitSplash() { return mPlayExitSplash ? mPlayExitSplash : (mPlayExitSplash = ScriptObject.Find!(ScriptFunction)("Function Engine.WaterVolume.PlayExitSplash")); }
		}
	}
	@property final auto ref
	{
		ScriptClass ExitActor() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 596); }
		SoundCue ExitSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 592); }
		ScriptClass EntryActor() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 588); }
		SoundCue EntrySound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 584); }
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
