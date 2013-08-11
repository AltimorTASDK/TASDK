module UnrealScript.Engine.PhysicalMaterial;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.PhysicalMaterialPropertyBase;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Actor;

extern(C++) interface PhysicalMaterial : UObject
{
public extern(D):
	enum EPhysEffectType : ubyte
	{
		EPMET_Impact = 0,
		EPMET_Slide = 1,
		EPMET_MAX = 2,
	}
	@property final
	{
		auto ref
		{
			int MaterialIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
			SoundCue FractureSoundSingle() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 148); }
			SoundCue FractureSoundExplosion() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 144); }
			PhysicalMaterial Parent() { return *cast(PhysicalMaterial*)(cast(size_t)cast(void*)this + 152); }
			PhysicalMaterialPropertyBase PhysicalMaterialProperty() { return *cast(PhysicalMaterialPropertyBase*)(cast(size_t)cast(void*)this + 156); }
			float Friction() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
			float Restitution() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
			Vector AnisoFrictionDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 76); }
			float FrictionV() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
			float Density() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
			float AngularDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
			float LinearDamping() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
			float MagneticResponse() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
			float WindResponse() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			float ImpactThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
			float ImpactReFireDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
			ParticleSystem ImpactEffect() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 120); }
			SoundCue ImpactSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 124); }
			float SlideThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
			float SlideReFireDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
			ParticleSystem SlideEffect() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 136); }
			SoundCue SlideSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 140); }
		}
		bool bForceConeFriction() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x1) != 0; }
		bool bForceConeFriction(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x1; } return val; }
		bool bEnableAnisotropicFriction() { return (*cast(uint*)(cast(size_t)cast(void*)this + 72) & 0x2) != 0; }
		bool bEnableAnisotropicFriction(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 72) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 72) &= ~0x2; } return val; }
	}
final:
	Actor.PhysEffectInfo FindPhysEffectInfo(PhysicalMaterial.EPhysEffectType Type)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PhysicalMaterial.EPhysEffectType*)params.ptr = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[16492], params.ptr, cast(void*)0);
		return *cast(Actor.PhysEffectInfo*)&params[4];
	}
	void FindFractureSounds(SoundCue* OutSoundExplosion, SoundCue* OutSoundSingle)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SoundCue*)params.ptr = *OutSoundExplosion;
		*cast(SoundCue*)&params[4] = *OutSoundSingle;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24299], params.ptr, cast(void*)0);
		*OutSoundExplosion = *cast(SoundCue*)params.ptr;
		*OutSoundSingle = *cast(SoundCue*)&params[4];
	}
	PhysicalMaterialPropertyBase GetPhysicalMaterialProperty(ScriptClass DesiredClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DesiredClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[24306], params.ptr, cast(void*)0);
		return *cast(PhysicalMaterialPropertyBase*)&params[4];
	}
}
