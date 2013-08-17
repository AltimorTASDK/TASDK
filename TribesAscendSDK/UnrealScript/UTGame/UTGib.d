module UnrealScript.UTGame.UTGib;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInstance;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PhysicsAsset;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.SkeletalMesh;
import UnrealScript.Engine.StaticMesh;
import UnrealScript.Engine.MaterialInstanceTimeVarying;
import UnrealScript.Engine.HUD;

extern(C++) interface UTGib : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTGib")()); }
	private static __gshared UTGib mDefaultProperties;
	@property final static UTGib DefaultProperties() { mixin(MGDPC!(UTGib, "UTGib UTGame.Default__UTGib")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPreBeginPlay;
			ScriptFunction mSetTexturesToBeResident;
			ScriptFunction mDisplayDebug;
			ScriptFunction mSetGibStaticMesh;
			ScriptFunction mChooseGib;
			ScriptFunction mDoCustomGibEffects;
			ScriptFunction mTimer;
			ScriptFunction mBecomeViewTarget;
			ScriptFunction mCalcCamera;
			ScriptFunction mRigidBodyCollision;
			ScriptFunction mLeaveADecal;
			ScriptFunction mTurnOnCollision;
			ScriptFunction mLanded;
			ScriptFunction mHitWall;
		}
		public @property static final
		{
			ScriptFunction PreBeginPlay() { mixin(MGF!("mPreBeginPlay", "Function UTGame.UTGib.PreBeginPlay")()); }
			ScriptFunction SetTexturesToBeResident() { mixin(MGF!("mSetTexturesToBeResident", "Function UTGame.UTGib.SetTexturesToBeResident")()); }
			ScriptFunction DisplayDebug() { mixin(MGF!("mDisplayDebug", "Function UTGame.UTGib.DisplayDebug")()); }
			ScriptFunction SetGibStaticMesh() { mixin(MGF!("mSetGibStaticMesh", "Function UTGame.UTGib.SetGibStaticMesh")()); }
			ScriptFunction ChooseGib() { mixin(MGF!("mChooseGib", "Function UTGame.UTGib.ChooseGib")()); }
			ScriptFunction DoCustomGibEffects() { mixin(MGF!("mDoCustomGibEffects", "Function UTGame.UTGib.DoCustomGibEffects")()); }
			ScriptFunction Timer() { mixin(MGF!("mTimer", "Function UTGame.UTGib.Timer")()); }
			ScriptFunction BecomeViewTarget() { mixin(MGF!("mBecomeViewTarget", "Function UTGame.UTGib.BecomeViewTarget")()); }
			ScriptFunction CalcCamera() { mixin(MGF!("mCalcCamera", "Function UTGame.UTGib.CalcCamera")()); }
			ScriptFunction RigidBodyCollision() { mixin(MGF!("mRigidBodyCollision", "Function UTGame.UTGib.RigidBodyCollision")()); }
			ScriptFunction LeaveADecal() { mixin(MGF!("mLeaveADecal", "Function UTGame.UTGib.LeaveADecal")()); }
			ScriptFunction TurnOnCollision() { mixin(MGF!("mTurnOnCollision", "Function UTGame.UTGib.TurnOnCollision")()); }
			ScriptFunction Landed() { mixin(MGF!("mLanded", "Function UTGame.UTGib.Landed")()); }
			ScriptFunction HitWall() { mixin(MGF!("mHitWall", "Function UTGame.UTGib.HitWall")()); }
		}
	}
	struct StaticMeshDatum
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct UTGame.UTGib.StaticMeshDatum")()); }
		@property final
		{
			auto ref
			{
				float DrawScale() { mixin(MGPS!(float, 12)()); }
				PhysicsAsset ThePhysAsset() { mixin(MGPS!(PhysicsAsset, 8)()); }
				SkeletalMesh TheSkelMesh() { mixin(MGPS!(SkeletalMesh, 4)()); }
				StaticMesh TheStaticMesh() { mixin(MGPS!(StaticMesh, 0)()); }
			}
			bool bUseSecondaryGibMeshMITV() { mixin(MGBPS!(16, 0x1)()); }
			bool bUseSecondaryGibMeshMITV(bool val) { mixin(MSBPS!(16, 0x1)()); }
		}
	}
	@property final
	{
		auto ref
		{
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'GibMeshComp'!
			ScriptName DecalDissolveParamName() { mixin(MGPC!(ScriptName, 500)()); }
			float DecalWaitTimeBeforeDissolve() { mixin(MGPC!(float, 508)()); }
			ScriptArray!(UTGib.StaticMeshDatum) GibMeshesData() { mixin(MGPC!(ScriptArray!(UTGib.StaticMeshDatum), 544)()); }
			Rotator OldCamRot() { mixin(MGPC!(Rotator, 568)()); }
			Vector OldCamLoc() { mixin(MGPC!(Vector, 556)()); }
			ParticleSystem PS_CustomEffect() { mixin(MGPC!(ParticleSystem, 536)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PSC_GibEffect'!
			float GibMeshWaitTimeBeforeDissolve() { mixin(MGPC!(float, 528)()); }
			ScriptName GibMeshDissolveParamName() { mixin(MGPC!(ScriptName, 520)()); }
			MaterialInstanceTimeVarying MITV_GibMeshTemplateSecondary() { mixin(MGPC!(MaterialInstanceTimeVarying, 516)()); }
			MaterialInstanceTimeVarying MITV_GibMeshTemplate() { mixin(MGPC!(MaterialInstanceTimeVarying, 512)()); }
			MaterialInstanceTimeVarying MITV_DecalTemplate() { mixin(MGPC!(MaterialInstanceTimeVarying, 496)()); }
			MaterialInstance MI_Decal() { mixin(MGPC!(MaterialInstance, 492)()); }
			MaterialInstanceConstant MIC_Gib() { mixin(MGPC!(MaterialInstanceConstant, 488)()); }
			SoundCue HitSound() { mixin(MGPC!(SoundCue, 480)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'GibLightEnvironment'!
		}
		bool bUseUnrealPhysics() { mixin(MGBPC!(540, 0x1)()); }
		bool bUseUnrealPhysics(bool val) { mixin(MSBPC!(540, 0x1)()); }
		bool bStopMovingCamera() { mixin(MGBPC!(540, 0x2)()); }
		bool bStopMovingCamera(bool val) { mixin(MSBPC!(540, 0x2)()); }
	}
final:
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
	void SetTexturesToBeResident(float TimeToBeResident)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = TimeToBeResident;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetTexturesToBeResident, params.ptr, cast(void*)0);
	}
	void DisplayDebug(HUD pHUD, ref float out_YL, ref float out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = out_YL;
		*cast(float*)&params[8] = out_YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDebug, params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	void SetGibStaticMesh(StaticMesh NewStaticMesh)
	{
		ubyte params[4];
		params[] = 0;
		*cast(StaticMesh*)params.ptr = NewStaticMesh;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetGibStaticMesh, params.ptr, cast(void*)0);
	}
	void ChooseGib()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ChooseGib, cast(void*)0, cast(void*)0);
	}
	void DoCustomGibEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DoCustomGibEffects, cast(void*)0, cast(void*)0);
	}
	void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Timer, cast(void*)0, cast(void*)0);
	}
	void BecomeViewTarget(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.BecomeViewTarget, params.ptr, cast(void*)0);
	}
	bool CalcCamera(float fDeltaTime, ref Vector out_CamLoc, ref Rotator out_CamRot, ref float out_FOV)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = out_CamLoc;
		*cast(Rotator*)&params[16] = out_CamRot;
		*cast(float*)&params[28] = out_FOV;
		(cast(ScriptObject)this).ProcessEvent(Functions.CalcCamera, params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
		*out_FOV = *cast(float*)&params[28];
		return *cast(bool*)&params[32];
	}
	void RigidBodyCollision(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* HitComponent, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherComponent, ref const Actor.CollisionImpactData RigidCollisionData, int ContactIndex)
	{
		ubyte params[48];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = HitComponent;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComponent;
		*cast(Actor.CollisionImpactData*)&params[8] = RigidCollisionData;
		*cast(int*)&params[44] = ContactIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.RigidBodyCollision, params.ptr, cast(void*)0);
		*RigidCollisionData = *cast(Actor.CollisionImpactData*)&params[8];
	}
	void LeaveADecal(Vector HitLoc, Vector HitNorm)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLoc;
		*cast(Vector*)&params[12] = HitNorm;
		(cast(ScriptObject)this).ProcessEvent(Functions.LeaveADecal, params.ptr, cast(void*)0);
	}
	void TurnOnCollision()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TurnOnCollision, cast(void*)0, cast(void*)0);
	}
	void Landed(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.Landed, params.ptr, cast(void*)0);
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
}
