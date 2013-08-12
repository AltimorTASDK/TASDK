module UnrealScript.TribesGame.TrAttachment_Melee;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_Melee : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_Melee")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPlayImpactSound;
			ScriptFunction mPlayImpactEffects;
		}
		public @property static final
		{
			ScriptFunction PlayImpactSound() { return mPlayImpactSound ? mPlayImpactSound : (mPlayImpactSound = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAttachment_Melee.PlayImpactSound")); }
			ScriptFunction PlayImpactEffects() { return mPlayImpactEffects ? mPlayImpactEffects : (mPlayImpactEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrAttachment_Melee.PlayImpactEffects")); }
		}
	}
final:
	void PlayImpactSound(Actor HitActor, SoundCue SoundToPlay, Vector FireDir, Vector HitLocation)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = HitActor;
		*cast(SoundCue*)&params[4] = SoundToPlay;
		*cast(Vector*)&params[8] = FireDir;
		*cast(Vector*)&params[20] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayImpactSound, params.ptr, cast(void*)0);
	}
	void PlayImpactEffects(Vector HitLocation)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayImpactEffects, params.ptr, cast(void*)0);
	}
}
