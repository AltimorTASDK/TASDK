module UnrealScript.Engine.DynamicSMActor;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SeqAct_SetMaterial;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.StaticMesh;
import UnrealScript.Engine.SeqAct_SetMesh;

extern(C++) interface DynamicSMActor : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.DynamicSMActor")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mReplicatedEvent;
			ScriptFunction mOnSetMesh;
			ScriptFunction mOnSetMaterial;
			ScriptFunction mSetStaticMesh;
			ScriptFunction mCanBasePawn;
			ScriptFunction mAttach;
			ScriptFunction mDetach;
			ScriptFunction mSetLightEnvironmentToNotBeDynamic;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.DynamicSMActor.PostBeginPlay")); }
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function Engine.DynamicSMActor.ReplicatedEvent")); }
			ScriptFunction OnSetMesh() { return mOnSetMesh ? mOnSetMesh : (mOnSetMesh = ScriptObject.Find!(ScriptFunction)("Function Engine.DynamicSMActor.OnSetMesh")); }
			ScriptFunction OnSetMaterial() { return mOnSetMaterial ? mOnSetMaterial : (mOnSetMaterial = ScriptObject.Find!(ScriptFunction)("Function Engine.DynamicSMActor.OnSetMaterial")); }
			ScriptFunction SetStaticMesh() { return mSetStaticMesh ? mSetStaticMesh : (mSetStaticMesh = ScriptObject.Find!(ScriptFunction)("Function Engine.DynamicSMActor.SetStaticMesh")); }
			ScriptFunction CanBasePawn() { return mCanBasePawn ? mCanBasePawn : (mCanBasePawn = ScriptObject.Find!(ScriptFunction)("Function Engine.DynamicSMActor.CanBasePawn")); }
			ScriptFunction Attach() { return mAttach ? mAttach : (mAttach = ScriptObject.Find!(ScriptFunction)("Function Engine.DynamicSMActor.Attach")); }
			ScriptFunction Detach() { return mDetach ? mDetach : (mDetach = ScriptObject.Find!(ScriptFunction)("Function Engine.DynamicSMActor.Detach")); }
			ScriptFunction SetLightEnvironmentToNotBeDynamic() { return mSetLightEnvironmentToNotBeDynamic ? mSetLightEnvironmentToNotBeDynamic : (mSetLightEnvironmentToNotBeDynamic = ScriptObject.Find!(ScriptFunction)("Function Engine.DynamicSMActor.SetLightEnvironmentToNotBeDynamic")); }
		}
	}
	@property final
	{
		auto ref
		{
			Vector ReplicatedMeshScale3D() { return *cast(Vector*)(cast(size_t)cast(void*)this + 520); }
			Rotator ReplicatedMeshRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 508); }
			Vector ReplicatedMeshTranslation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 496); }
			MaterialInterface ReplicatedMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 488); }
			StaticMesh ReplicatedMesh() { return *cast(StaticMesh*)(cast(size_t)cast(void*)this + 484); }
		}
		bool bSafeBaseIfAsleep() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x4) != 0; }
		bool bSafeBaseIfAsleep(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x4; } return val; }
		bool bPawnCanBaseOn() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x2) != 0; }
		bool bPawnCanBaseOn(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x2; } return val; }
		bool bForceStaticDecals() { return (*cast(uint*)(cast(size_t)cast(void*)this + 492) & 0x1) != 0; }
		bool bForceStaticDecals(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 492) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 492) &= ~0x1; } return val; }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void OnSetMesh(SeqAct_SetMesh Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetMesh*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSetMesh, params.ptr, cast(void*)0);
	}
	void OnSetMaterial(SeqAct_SetMaterial Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_SetMaterial*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSetMaterial, params.ptr, cast(void*)0);
	}
	void SetStaticMesh(StaticMesh NewMesh, Vector NewTranslation, Rotator NewRotation, Vector NewScale3D)
	{
		ubyte params[40];
		params[] = 0;
		*cast(StaticMesh*)params.ptr = NewMesh;
		*cast(Vector*)&params[4] = NewTranslation;
		*cast(Rotator*)&params[16] = NewRotation;
		*cast(Vector*)&params[28] = NewScale3D;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetStaticMesh, params.ptr, cast(void*)0);
	}
	bool CanBasePawn(Pawn P)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanBasePawn, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void Attach(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.Attach, params.ptr, cast(void*)0);
	}
	void Detach(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.Detach, params.ptr, cast(void*)0);
	}
	void SetLightEnvironmentToNotBeDynamic()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetLightEnvironmentToNotBeDynamic, cast(void*)0, cast(void*)0);
	}
}
