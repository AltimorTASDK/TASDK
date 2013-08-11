module UnrealScript.Engine.EmitterPool;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ParticleSystem;

extern(C++) interface EmitterPool : Actor
{
public extern(D):
	struct EmitterBaseInfo
	{
		private ubyte __buffer__[36];
	public extern(D):
		@property final
		{
			auto ref
			{
				Rotator RelativeRotation() { return *cast(Rotator*)(cast(size_t)&this + 20); }
				Vector RelativeLocation() { return *cast(Vector*)(cast(size_t)&this + 8); }
				Actor Base() { return *cast(Actor*)(cast(size_t)&this + 4); }
			}
			bool bInheritBaseScale() { return (*cast(uint*)(cast(size_t)&this + 32) & 0x1) != 0; }
			bool bInheritBaseScale(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 32) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 32) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) PoolComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 480); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) ActiveComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 492); }
			ScriptArray!(EmitterPool.EmitterBaseInfo) RelativePSCs() { return *cast(ScriptArray!(EmitterPool.EmitterBaseInfo)*)(cast(size_t)cast(void*)this + 512); }
			ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) FreeSMComponents() { return *cast(ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)*)(cast(size_t)cast(void*)this + 540); }
			ScriptArray!(MaterialInstanceConstant) FreeMatInstConsts() { return *cast(ScriptArray!(MaterialInstanceConstant)*)(cast(size_t)cast(void*)this + 552); }
			int IdealMaterialInstanceConstants() { return *cast(int*)(cast(size_t)cast(void*)this + 536); }
			int IdealStaticMeshComponents() { return *cast(int*)(cast(size_t)cast(void*)this + 532); }
			float SMC_MIC_CurrentReductionTime() { return *cast(float*)(cast(size_t)cast(void*)this + 528); }
			float SMC_MIC_ReductionTime() { return *cast(float*)(cast(size_t)cast(void*)this + 524); }
			int MaxActiveEffects() { return *cast(int*)(cast(size_t)cast(void*)this + 504); }
		}
		bool bLogPoolOverflowList() { return (*cast(uint*)(cast(size_t)cast(void*)this + 508) & 0x2) != 0; }
		bool bLogPoolOverflowList(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 508) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 508) &= ~0x2; } return val; }
		bool bLogPoolOverflow() { return (*cast(uint*)(cast(size_t)cast(void*)this + 508) & 0x1) != 0; }
		bool bLogPoolOverflow(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 508) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 508) &= ~0x1; } return val; }
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7298], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15237], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15240], params.ptr, cast(void*)0);
	}
	void ClearPoolComponents(bool bClearActive)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bClearActive;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15241], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15244], params.ptr, cast(void*)0);
	}
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* GetFreeStaticMeshComponent(bool bCreateNewObject)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bCreateNewObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15246], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15249], params.ptr, cast(void*)0);
	}
	MaterialInstanceConstant GetFreeMatInstConsts(bool bCreateNewObject)
	{
		ubyte params[8];
		params[] = 0;
		*cast(bool*)params.ptr = bCreateNewObject;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15251], params.ptr, cast(void*)0);
		return *cast(MaterialInstanceConstant*)&params[4];
	}
	
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* GetPooledComponent(ParticleSystem EmitterTemplate, bool bAutoActivate)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ParticleSystem*)params.ptr = EmitterTemplate;
		*cast(bool*)&params[4] = bAutoActivate;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15254], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15265], params.ptr, cast(void*)0);
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[15274], params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[8];
	}
}
