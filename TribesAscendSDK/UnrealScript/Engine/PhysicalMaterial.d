module UnrealScript.Engine.PhysicalMaterial;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.PhysicalMaterialPropertyBase;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Actor;

extern(C++) interface PhysicalMaterial : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PhysicalMaterial")()); }
	private static __gshared PhysicalMaterial mDefaultProperties;
	@property final static PhysicalMaterial DefaultProperties() { mixin(MGDPC!(PhysicalMaterial, "PhysicalMaterial Engine.Default__PhysicalMaterial")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mFindPhysEffectInfo;
			ScriptFunction mFindFractureSounds;
			ScriptFunction mGetPhysicalMaterialProperty;
		}
		public @property static final
		{
			ScriptFunction FindPhysEffectInfo() { mixin(MGF!("mFindPhysEffectInfo", "Function Engine.PhysicalMaterial.FindPhysEffectInfo")()); }
			ScriptFunction FindFractureSounds() { mixin(MGF!("mFindFractureSounds", "Function Engine.PhysicalMaterial.FindFractureSounds")()); }
			ScriptFunction GetPhysicalMaterialProperty() { mixin(MGF!("mGetPhysicalMaterialProperty", "Function Engine.PhysicalMaterial.GetPhysicalMaterialProperty")()); }
		}
	}
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
			int MaterialIndex() { mixin(MGPC!("int", 60)()); }
			SoundCue FractureSoundSingle() { mixin(MGPC!("SoundCue", 148)()); }
			SoundCue FractureSoundExplosion() { mixin(MGPC!("SoundCue", 144)()); }
			PhysicalMaterial Parent() { mixin(MGPC!("PhysicalMaterial", 152)()); }
			PhysicalMaterialPropertyBase PhysicalMaterialProperty() { mixin(MGPC!("PhysicalMaterialPropertyBase", 156)()); }
			float Friction() { mixin(MGPC!("float", 64)()); }
			float Restitution() { mixin(MGPC!("float", 68)()); }
			Vector AnisoFrictionDir() { mixin(MGPC!("Vector", 76)()); }
			float FrictionV() { mixin(MGPC!("float", 88)()); }
			float Density() { mixin(MGPC!("float", 92)()); }
			float AngularDamping() { mixin(MGPC!("float", 96)()); }
			float LinearDamping() { mixin(MGPC!("float", 100)()); }
			float MagneticResponse() { mixin(MGPC!("float", 104)()); }
			float WindResponse() { mixin(MGPC!("float", 108)()); }
			float ImpactThreshold() { mixin(MGPC!("float", 112)()); }
			float ImpactReFireDelay() { mixin(MGPC!("float", 116)()); }
			ParticleSystem ImpactEffect() { mixin(MGPC!("ParticleSystem", 120)()); }
			SoundCue ImpactSound() { mixin(MGPC!("SoundCue", 124)()); }
			float SlideThreshold() { mixin(MGPC!("float", 128)()); }
			float SlideReFireDelay() { mixin(MGPC!("float", 132)()); }
			ParticleSystem SlideEffect() { mixin(MGPC!("ParticleSystem", 136)()); }
			SoundCue SlideSound() { mixin(MGPC!("SoundCue", 140)()); }
		}
		bool bForceConeFriction() { mixin(MGBPC!(72, 0x1)()); }
		bool bForceConeFriction(bool val) { mixin(MSBPC!(72, 0x1)()); }
		bool bEnableAnisotropicFriction() { mixin(MGBPC!(72, 0x2)()); }
		bool bEnableAnisotropicFriction(bool val) { mixin(MSBPC!(72, 0x2)()); }
	}
final:
	Actor.PhysEffectInfo FindPhysEffectInfo(PhysicalMaterial.EPhysEffectType Type)
	{
		ubyte params[20];
		params[] = 0;
		*cast(PhysicalMaterial.EPhysEffectType*)params.ptr = Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindPhysEffectInfo, params.ptr, cast(void*)0);
		return *cast(Actor.PhysEffectInfo*)&params[4];
	}
	void FindFractureSounds(ref SoundCue OutSoundExplosion, ref SoundCue OutSoundSingle)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SoundCue*)params.ptr = OutSoundExplosion;
		*cast(SoundCue*)&params[4] = OutSoundSingle;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindFractureSounds, params.ptr, cast(void*)0);
		OutSoundExplosion = *cast(SoundCue*)params.ptr;
		OutSoundSingle = *cast(SoundCue*)&params[4];
	}
	PhysicalMaterialPropertyBase GetPhysicalMaterialProperty(ScriptClass DesiredClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = DesiredClass;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPhysicalMaterialProperty, params.ptr, cast(void*)0);
		return *cast(PhysicalMaterialPropertyBase*)&params[4];
	}
}
