module UnrealScript.Engine.EmitterPool;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ParticleSystem;

extern(C++) interface EmitterPool : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.EmitterPool")()); }
	private static __gshared EmitterPool mDefaultProperties;
	@property final static EmitterPool DefaultProperties() { mixin(MGDPC!(EmitterPool, "EmitterPool Engine.Default__EmitterPool")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSpawnEmitter;
			ScriptFunction mOnParticleSystemFinished;
			ScriptFunction mReturnToPool;
			ScriptFunction mClearPoolComponents;
			ScriptFunction mFreeStaticMeshComponents;
			ScriptFunction mGetFreeStaticMeshComponent;
			ScriptFunction mFreeMaterialInstanceConstants;
			ScriptFunction mGetFreeMatInstConsts;
			ScriptFunction mGetPooledComponent;
			ScriptFunction mSpawnEmitterMeshAttachment;
			ScriptFunction mSpawnEmitterCustomLifetime;
		}
		public @property static final
		{
			ScriptFunction SpawnEmitter() { mixin(MGF!("mSpawnEmitter", "Function Engine.EmitterPool.SpawnEmitter")()); }
			ScriptFunction OnParticleSystemFinished() { mixin(MGF!("mOnParticleSystemFinished", "Function Engine.EmitterPool.OnParticleSystemFinished")()); }
			ScriptFunction ReturnToPool() { mixin(MGF!("mReturnToPool", "Function Engine.EmitterPool.ReturnToPool")()); }
			ScriptFunction ClearPoolComponents() { mixin(MGF!("mClearPoolComponents", "Function Engine.EmitterPool.ClearPoolComponents")()); }
			ScriptFunction FreeStaticMeshComponents() { mixin(MGF!("mFreeStaticMeshComponents", "Function Engine.EmitterPool.FreeStaticMeshComponents")()); }
			ScriptFunction GetFreeStaticMeshComponent() { mixin(MGF!("mGetFreeStaticMeshComponent", "Function Engine.EmitterPool.GetFreeStaticMeshComponent")()); }
			ScriptFunction FreeMaterialInstanceConstants() { mixin(MGF!("mFreeMaterialInstanceConstants", "Function Engine.EmitterPool.FreeMaterialInstanceConstants")()); }
			ScriptFunction GetFreeMatInstConsts() { mixin(MGF!("mGetFreeMatInstConsts", "Function Engine.EmitterPool.GetFreeMatInstConsts")()); }
			ScriptFunction GetPooledComponent() { mixin(MGF!("mGetPooledComponent", "Function Engine.EmitterPool.GetPooledComponent")()); }
			ScriptFunction SpawnEmitterMeshAttachment() { mixin(MGF!("mSpawnEmitterMeshAttachment", "Function Engine.EmitterPool.SpawnEmitterMeshAttachment")()); }
			ScriptFunction SpawnEmitterCustomLifetime() { mixin(MGF!("mSpawnEmitterCustomLifetime", "Function Engine.EmitterPool.SpawnEmitterCustomLifetime")()); }
		}
	}
	struct EmitterBaseInfo
	{
		private ubyte __buffer__[36];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.EmitterPool.EmitterBaseInfo")()); }
		@property final
		{
			auto ref
			{
				Rotator RelativeRotation() { mixin(MGPS!(Rotator, 20)()); }
				Vector RelativeLocation() { mixin(MGPS!(Vector, 8)()); }
				Actor Base() { mixin(MGPS!(Actor, 4)()); }
				// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PSC'!
			}
			bool bInheritBaseScale() { mixin(MGBPS!(32, 0x1)()); }
			bool bInheritBaseScale(bool val) { mixin(MSBPS!(32, 0x1)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) PoolComponents() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*), 480)()); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) ActiveComponents() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*), 492)()); }
			ScriptArray!(EmitterPool.EmitterBaseInfo) RelativePSCs() { mixin(MGPC!(ScriptArray!(EmitterPool.EmitterBaseInfo), 512)()); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) FreeSMComponents() { mixin(MGPC!(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*), 540)()); }
			ScriptArray!(MaterialInstanceConstant) FreeMatInstConsts() { mixin(MGPC!(ScriptArray!(MaterialInstanceConstant), 552)()); }
			int IdealMaterialInstanceConstants() { mixin(MGPC!(int, 536)()); }
			int IdealStaticMeshComponents() { mixin(MGPC!(int, 532)()); }
			float SMC_MIC_CurrentReductionTime() { mixin(MGPC!(float, 528)()); }
			float SMC_MIC_ReductionTime() { mixin(MGPC!(float, 524)()); }
			int MaxActiveEffects() { mixin(MGPC!(int, 504)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PSCTemplate'!
		}
		bool bLogPoolOverflowList() { mixin(MGBPC!(508, 0x2)()); }
		bool bLogPoolOverflowList(bool val) { mixin(MSBPC!(508, 0x2)()); }
		bool bLogPoolOverflow() { mixin(MGBPC!(508, 0x1)()); }
		bool bLogPoolOverflow(bool val) { mixin(MSBPC!(508, 0x1)()); }
	}
final:
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SpawnEmitter(ParticleSystem EmitterTemplate, Vector SpawnLocation, Rotator SpawnRotation, Actor AttachToActor, bool bInheritScaleFromBase)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ParticleSystem*)params.ptr = EmitterTemplate;
		*cast(Vector*)&params[4] = SpawnLocation;
		*cast(Rotator*)&params[16] = SpawnRotation;
		*cast(Actor*)&params[28] = AttachToActor;
		*cast(bool*)&params[32] = bInheritScaleFromBase;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnEmitter, params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[36];
	}
	void OnParticleSystemFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PSC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = PSC;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnParticleSystemFinished, params.ptr, cast(void*)0);
	}
	void ReturnToPool(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PSC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = PSC;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReturnToPool, params.ptr, cast(void*)0);
	}
	void ClearPoolComponents(bool bClearActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bClearActive;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearPoolComponents, params.ptr, cast(void*)0);
	}
	void FreeStaticMeshComponents(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* PSC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = PSC;
		(cast(ScriptObject)this).ProcessEvent(Functions.FreeStaticMeshComponents, params.ptr, cast(void*)0);
	}
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* GetFreeStaticMeshComponent(bool bCreateNewObject)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bCreateNewObject;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFreeStaticMeshComponent, params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4];
	}
	void FreeMaterialInstanceConstants(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SMC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = SMC;
		(cast(ScriptObject)this).ProcessEvent(Functions.FreeMaterialInstanceConstants, params.ptr, cast(void*)0);
	}
	MaterialInstanceConstant GetFreeMatInstConsts(bool bCreateNewObject)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bCreateNewObject;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFreeMatInstConsts, params.ptr, cast(void*)0);
		return *cast(MaterialInstanceConstant*)&params[4];
	}
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* GetPooledComponent(ParticleSystem EmitterTemplate, bool bAutoActivate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ParticleSystem*)params.ptr = EmitterTemplate;
		*cast(bool*)&params[4] = bAutoActivate;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPooledComponent, params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[8];
	}
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SpawnEmitterMeshAttachment(ParticleSystem EmitterTemplate, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* Mesh, ScriptName AttachPointName, bool bAttachToSocket, Vector RelativeLoc, Rotator RelativeRot)
	{
		ubyte params[48];
		params[] = 0;
		*cast(ParticleSystem*)params.ptr = EmitterTemplate;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = Mesh;
		*cast(ScriptName*)&params[8] = AttachPointName;
		*cast(bool*)&params[16] = bAttachToSocket;
		*cast(Vector*)&params[20] = RelativeLoc;
		*cast(Rotator*)&params[32] = RelativeRot;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnEmitterMeshAttachment, params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[44];
	}
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SpawnEmitterCustomLifetime(ParticleSystem EmitterTemplate, bool bSkipAutoActivate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ParticleSystem*)params.ptr = EmitterTemplate;
		*cast(bool*)&params[4] = bSkipAutoActivate;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnEmitterCustomLifetime, params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[8];
	}
}
