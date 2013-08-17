module UnrealScript.UTGame.UTBeamWeapon;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTWeapon;
import UnrealScript.Engine.ForceFeedbackWaveform;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.HUD;

extern(C++) interface UTBeamWeapon : UTWeapon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTBeamWeapon")); }
	private static __gshared UTBeamWeapon mDefaultProperties;
	@property final static UTBeamWeapon DefaultProperties() { mixin(MGDPC("UTBeamWeapon", "UTBeamWeapon UTGame.Default__UTBeamWeapon")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAddBeamEmitter;
			ScriptFunction mKillBeamEmitter;
			ScriptFunction mSetBeamEmitterHidden;
			ScriptFunction mUpdateBeamEmitter;
			ScriptFunction mProcessBeamHit;
			ScriptFunction mUpdateBeam;
			ScriptFunction mDisplayDebug;
		}
		public @property static final
		{
			ScriptFunction AddBeamEmitter() { mixin(MGF("mAddBeamEmitter", "Function UTGame.UTBeamWeapon.AddBeamEmitter")); }
			ScriptFunction KillBeamEmitter() { mixin(MGF("mKillBeamEmitter", "Function UTGame.UTBeamWeapon.KillBeamEmitter")); }
			ScriptFunction SetBeamEmitterHidden() { mixin(MGF("mSetBeamEmitterHidden", "Function UTGame.UTBeamWeapon.SetBeamEmitterHidden")); }
			ScriptFunction UpdateBeamEmitter() { mixin(MGF("mUpdateBeamEmitter", "Function UTGame.UTBeamWeapon.UpdateBeamEmitter")); }
			ScriptFunction ProcessBeamHit() { mixin(MGF("mProcessBeamHit", "Function UTGame.UTBeamWeapon.ProcessBeamHit")); }
			ScriptFunction UpdateBeam() { mixin(MGF("mUpdateBeam", "Function UTGame.UTBeamWeapon.UpdateBeam")); }
			ScriptFunction DisplayDebug() { mixin(MGF("mDisplayDebug", "Function UTGame.UTBeamWeapon.DisplayDebug")); }
		}
	}
	static struct WeaponBeamFiring
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State UTGame.UTBeamWeapon.WeaponBeamFiring")); }
	}
	@property final auto ref
	{
		ForceFeedbackWaveform BeamWeaponFireWaveForm() { mixin(MGPC("ForceFeedbackWaveform", 1560)); }
		ScriptName BeamPostFireAnim() { mixin(MGPC("ScriptName", 1544)); }
		ScriptName BeamFireAnim() { mixin(MGPC("ScriptName", 1528)); }
		ScriptName BeamPreFireAnim() { mixin(MGPC("ScriptName", 1512)); }
		ScriptName EndPointParamName() { mixin(MGPC("ScriptName", 1504)); }
		ScriptName BeamSockets() { mixin(MGPC("ScriptName", 1488)); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'BeamEmitter'!
		ParticleSystem BeamTemplate() { mixin(MGPC("ParticleSystem", 1472)); }
	}
final:
	void AddBeamEmitter()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AddBeamEmitter, cast(void*)0, cast(void*)0);
	}
	void KillBeamEmitter()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.KillBeamEmitter, cast(void*)0, cast(void*)0);
	}
	void SetBeamEmitterHidden(bool bHide)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bHide;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBeamEmitterHidden, params.ptr, cast(void*)0);
	}
	void UpdateBeamEmitter(Vector FlashLocation, Vector HitNormal, Actor HitActor)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Vector*)params.ptr = FlashLocation;
		*cast(Vector*)&params[12] = HitNormal;
		*cast(Actor*)&params[24] = HitActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateBeamEmitter, params.ptr, cast(void*)0);
	}
	void ProcessBeamHit(Vector StartTrace, Vector AimDir, ref Actor.ImpactInfo TestImpact, float DeltaTime)
	{
		ubyte params[108];
		params[] = 0;
		*cast(Vector*)params.ptr = StartTrace;
		*cast(Vector*)&params[12] = AimDir;
		*cast(Actor.ImpactInfo*)&params[24] = TestImpact;
		*cast(float*)&params[104] = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.ProcessBeamHit, params.ptr, cast(void*)0);
		TestImpact = *cast(Actor.ImpactInfo*)&params[24];
	}
	void UpdateBeam(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateBeam, params.ptr, cast(void*)0);
	}
	void DisplayDebug(HUD pHUD, ref float out_YL, ref float out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = out_YL;
		*cast(float*)&params[8] = out_YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDebug, params.ptr, cast(void*)0);
		out_YL = *cast(float*)&params[4];
		out_YPos = *cast(float*)&params[8];
	}
}
