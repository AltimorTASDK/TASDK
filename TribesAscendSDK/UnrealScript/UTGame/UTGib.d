module UnrealScript.UTGame.UTGib;

import ScriptClasses;
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
	struct StaticMeshDatum
	{
		private ubyte __buffer__[20];
	public extern(D):
		@property final
		{
			auto ref
			{
				float DrawScale() { return *cast(float*)(cast(size_t)&this + 12); }
				PhysicsAsset ThePhysAsset() { return *cast(PhysicsAsset*)(cast(size_t)&this + 8); }
				SkeletalMesh TheSkelMesh() { return *cast(SkeletalMesh*)(cast(size_t)&this + 4); }
				StaticMesh TheStaticMesh() { return *cast(StaticMesh*)(cast(size_t)&this + 0); }
			}
			bool bUseSecondaryGibMeshMITV() { return (*cast(uint*)(cast(size_t)&this + 16) & 0x1) != 0; }
			bool bUseSecondaryGibMeshMITV(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 16) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 16) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptName DecalDissolveParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 500); }
			float DecalWaitTimeBeforeDissolve() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
			ScriptArray!(UTGib.StaticMeshDatum) GibMeshesData() { return *cast(ScriptArray!(UTGib.StaticMeshDatum)*)(cast(size_t)cast(void*)this + 544); }
			Rotator OldCamRot() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 568); }
			Vector OldCamLoc() { return *cast(Vector*)(cast(size_t)cast(void*)this + 556); }
			ParticleSystem PS_CustomEffect() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 536); }
			float GibMeshWaitTimeBeforeDissolve() { return *cast(float*)(cast(size_t)cast(void*)this + 528); }
			ScriptName GibMeshDissolveParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 520); }
			MaterialInstanceTimeVarying MITV_GibMeshTemplateSecondary() { return *cast(MaterialInstanceTimeVarying*)(cast(size_t)cast(void*)this + 516); }
			MaterialInstanceTimeVarying MITV_GibMeshTemplate() { return *cast(MaterialInstanceTimeVarying*)(cast(size_t)cast(void*)this + 512); }
			MaterialInstanceTimeVarying MITV_DecalTemplate() { return *cast(MaterialInstanceTimeVarying*)(cast(size_t)cast(void*)this + 496); }
			MaterialInstance MI_Decal() { return *cast(MaterialInstance*)(cast(size_t)cast(void*)this + 492); }
			MaterialInstanceConstant MIC_Gib() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 488); }
			SoundCue HitSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 480); }
		}
		bool bUseUnrealPhysics() { return (*cast(uint*)(cast(size_t)cast(void*)this + 540) & 0x1) != 0; }
		bool bUseUnrealPhysics(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 540) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 540) &= ~0x1; } return val; }
		bool bStopMovingCamera() { return (*cast(uint*)(cast(size_t)cast(void*)this + 540) & 0x2) != 0; }
		bool bStopMovingCamera(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 540) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 540) &= ~0x2; } return val; }
	}
final:
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47878], cast(void*)0, cast(void*)0);
	}
	void SetTexturesToBeResident(float TimeToBeResident)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = TimeToBeResident;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47879], params.ptr, cast(void*)0);
	}
	void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47882], params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	void SetGibStaticMesh(StaticMesh NewStaticMesh)
	{
		ubyte params[4];
		params[] = 0;
		*cast(StaticMesh*)params.ptr = NewStaticMesh;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47886], params.ptr, cast(void*)0);
	}
	void ChooseGib()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47890], cast(void*)0, cast(void*)0);
	}
	void DoCustomGibEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47899], cast(void*)0, cast(void*)0);
	}
	void Timer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47900], cast(void*)0, cast(void*)0);
	}
	void BecomeViewTarget(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47902], params.ptr, cast(void*)0);
	}
	bool CalcCamera(float fDeltaTime, Vector* out_CamLoc, Rotator* out_CamRot, float* out_FOV)
	{
		ubyte params[36];
		params[] = 0;
		*cast(float*)params.ptr = fDeltaTime;
		*cast(Vector*)&params[4] = *out_CamLoc;
		*cast(Rotator*)&params[16] = *out_CamRot;
		*cast(float*)&params[28] = *out_FOV;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47904], params.ptr, cast(void*)0);
		*out_CamLoc = *cast(Vector*)&params[4];
		*out_CamRot = *cast(Rotator*)&params[16];
		*out_FOV = *cast(float*)&params[28];
		return *cast(bool*)&params[32];
	}
	void RigidBodyCollision(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* HitComponent, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherComponent, Actor.CollisionImpactData* RigidCollisionData, int ContactIndex)
	{
		ubyte params[48];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = HitComponent;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComponent;
		*cast(Actor.CollisionImpactData*)&params[8] = *RigidCollisionData;
		*cast(int*)&params[44] = ContactIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47914], params.ptr, cast(void*)0);
		*RigidCollisionData = *cast(Actor.CollisionImpactData*)&params[8];
	}
	void LeaveADecal(Vector HitLoc, Vector HitNorm)
	{
		ubyte params[24];
		params[] = 0;
		*cast(Vector*)params.ptr = HitLoc;
		*cast(Vector*)&params[12] = HitNorm;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47919], params.ptr, cast(void*)0);
	}
	void TurnOnCollision()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47929], cast(void*)0, cast(void*)0);
	}
	void Landed(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47930], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[47933], params.ptr, cast(void*)0);
	}
}
