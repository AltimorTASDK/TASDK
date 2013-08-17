module UnrealScript.TribesGame.TrProj_Lacerator;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrProjectile;
import UnrealScript.Engine.CameraAnim;
import UnrealScript.UDKBase.UDKPawn;

extern(C++) interface TrProj_Lacerator : TrProjectile
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrProj_Lacerator")()); }
	private static __gshared TrProj_Lacerator mDefaultProperties;
	@property final static TrProj_Lacerator DefaultProperties() { mixin(MGDPC!(TrProj_Lacerator, "TrProj_Lacerator TribesGame.Default__TrProj_Lacerator")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitProjectile;
			ScriptFunction mSpawnFlightEffects;
			ScriptFunction mInternalSpawnFlightEffects;
			ScriptFunction mGetDamage;
			ScriptFunction mGetMomentumTransfer;
			ScriptFunction mProcessTouch;
			ScriptFunction mLanded;
			ScriptFunction mSpawnImpactEffect;
			ScriptFunction mHitWall;
			ScriptFunction mStartToShrink;
			ScriptFunction mMyOnParticleSystemFinished;
		}
		public @property static final
		{
			ScriptFunction InitProjectile() { mixin(MGF!("mInitProjectile", "Function TribesGame.TrProj_Lacerator.InitProjectile")()); }
			ScriptFunction SpawnFlightEffects() { mixin(MGF!("mSpawnFlightEffects", "Function TribesGame.TrProj_Lacerator.SpawnFlightEffects")()); }
			ScriptFunction InternalSpawnFlightEffects() { mixin(MGF!("mInternalSpawnFlightEffects", "Function TribesGame.TrProj_Lacerator.InternalSpawnFlightEffects")()); }
			ScriptFunction GetDamage() { mixin(MGF!("mGetDamage", "Function TribesGame.TrProj_Lacerator.GetDamage")()); }
			ScriptFunction GetMomentumTransfer() { mixin(MGF!("mGetMomentumTransfer", "Function TribesGame.TrProj_Lacerator.GetMomentumTransfer")()); }
			ScriptFunction ProcessTouch() { mixin(MGF!("mProcessTouch", "Function TribesGame.TrProj_Lacerator.ProcessTouch")()); }
			ScriptFunction Landed() { mixin(MGF!("mLanded", "Function TribesGame.TrProj_Lacerator.Landed")()); }
			ScriptFunction SpawnImpactEffect() { mixin(MGF!("mSpawnImpactEffect", "Function TribesGame.TrProj_Lacerator.SpawnImpactEffect")()); }
			ScriptFunction HitWall() { mixin(MGF!("mHitWall", "Function TribesGame.TrProj_Lacerator.HitWall")()); }
			ScriptFunction StartToShrink() { mixin(MGF!("mStartToShrink", "Function TribesGame.TrProj_Lacerator.StartToShrink")()); }
			ScriptFunction MyOnParticleSystemFinished() { mixin(MGF!("mMyOnParticleSystemFinished", "Function TribesGame.TrProj_Lacerator.MyOnParticleSystemFinished")()); }
		}
	}
	@property final
	{
		auto ref
		{
			CameraAnim ShortRangeKillAnim() { mixin(MGPC!("CameraAnim", 860)()); }
			SoundCue HitPawnSound() { mixin(MGPC!("SoundCue", 852)()); }
			UDKPawn.MaterialSoundEffect DefaultHitSound() { mixin(MGPC!("UDKPawn.MaterialSoundEffect", 840)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'LastImpactEffect'!
			ParticleSystem RockSmokeTemplate() { mixin(MGPC!("ParticleSystem", 832)()); }
			ParticleSystem BounceTemplate() { mixin(MGPC!("ParticleSystem", 828)()); }
			float ShrinkTimer() { mixin(MGPC!("float", 824)()); }
			float DamageAttenuation() { mixin(MGPC!("float", 820)()); }
			int Bounces() { mixin(MGPC!("int", 816)()); }
		}
		bool bShrinking() { mixin(MGBPC!(856, 0x2)()); }
		bool bShrinking(bool val) { mixin(MSBPC!(856, 0x2)()); }
		bool bCheckShortRangeKill() { mixin(MGBPC!(856, 0x1)()); }
		bool bCheckShortRangeKill(bool val) { mixin(MSBPC!(856, 0x1)()); }
	}
final:
	void InitProjectile(Vector Direction, ScriptClass* ClassToInherit = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = Direction;
		if (ClassToInherit !is null)
			*cast(ScriptClass*)&params[12] = *ClassToInherit;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitProjectile, params.ptr, cast(void*)0);
	}
	void SpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnFlightEffects, cast(void*)0, cast(void*)0);
	}
	void InternalSpawnFlightEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.InternalSpawnFlightEffects, cast(void*)0, cast(void*)0);
	}
	float GetDamage(Actor Other, Vector HitLocation)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = HitLocation;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDamage, params.ptr, cast(void*)0);
		return *cast(float*)&params[16];
	}
	float GetMomentumTransfer()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetMomentumTransfer, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void ProcessTouch(Actor Other, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = HitLocation;
		*cast(Vector*)&params[16] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessTouch, params.ptr, cast(void*)0);
	}
	void Landed(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.Landed, params.ptr, cast(void*)0);
	}
	bool SpawnImpactEffect(Vector HitLocation, Vector HitNormal)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLocation;
		*cast(Vector*)&params[12] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnImpactEffect, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void HitWall(Vector HitNormal, Actor Wall, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* WallComp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = Wall;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[16] = WallComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.HitWall, params.ptr, cast(void*)0);
	}
	void StartToShrink()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartToShrink, cast(void*)0, cast(void*)0);
	}
	void MyOnParticleSystemFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PSC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = PSC;
		(cast(ScriptObject)this).ProcessEvent(Functions.MyOnParticleSystemFinished, params.ptr, cast(void*)0);
	}
}
