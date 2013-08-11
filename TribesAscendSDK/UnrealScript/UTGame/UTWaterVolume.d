module UnrealScript.UTGame.UTWaterVolume;

import ScriptClasses;
import UnrealScript.Engine.WaterVolume;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Actor;

extern(C++) interface UTWaterVolume : WaterVolume
{
public extern(D):
	@property final auto ref
	{
		ParticleSystem ProjectileEntryEffect() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 608); }
		ParticleSystem PS_EnterWaterEffect_Vehicle() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 604); }
		ParticleSystem PS_EnterWaterEffect_Pawn() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 600); }
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47334], params.ptr, cast(void*)0);
	}
	void PlayEntrySplash(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47347], params.ptr, cast(void*)0);
	}
}
