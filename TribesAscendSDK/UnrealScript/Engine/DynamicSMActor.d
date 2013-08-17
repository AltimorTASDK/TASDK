module UnrealScript.Engine.DynamicSMActor;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DynamicSMActor")()); }
	private static __gshared DynamicSMActor mDefaultProperties;
	@property final static DynamicSMActor DefaultProperties() { mixin(MGDPC!(DynamicSMActor, "DynamicSMActor Engine.Default__DynamicSMActor")()); }
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
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.DynamicSMActor.PostBeginPlay")()); }
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function Engine.DynamicSMActor.ReplicatedEvent")()); }
			ScriptFunction OnSetMesh() { mixin(MGF!("mOnSetMesh", "Function Engine.DynamicSMActor.OnSetMesh")()); }
			ScriptFunction OnSetMaterial() { mixin(MGF!("mOnSetMaterial", "Function Engine.DynamicSMActor.OnSetMaterial")()); }
			ScriptFunction SetStaticMesh() { mixin(MGF!("mSetStaticMesh", "Function Engine.DynamicSMActor.SetStaticMesh")()); }
			ScriptFunction CanBasePawn() { mixin(MGF!("mCanBasePawn", "Function Engine.DynamicSMActor.CanBasePawn")()); }
			ScriptFunction Attach() { mixin(MGF!("mAttach", "Function Engine.DynamicSMActor.Attach")()); }
			ScriptFunction Detach() { mixin(MGF!("mDetach", "Function Engine.DynamicSMActor.Detach")()); }
			ScriptFunction SetLightEnvironmentToNotBeDynamic() { mixin(MGF!("mSetLightEnvironmentToNotBeDynamic", "Function Engine.DynamicSMActor.SetLightEnvironmentToNotBeDynamic")()); }
		}
	}
	@property final
	{
		auto ref
		{
			Vector ReplicatedMeshScale3D() { mixin(MGPC!(Vector, 520)()); }
			Rotator ReplicatedMeshRotation() { mixin(MGPC!(Rotator, 508)()); }
			Vector ReplicatedMeshTranslation() { mixin(MGPC!(Vector, 496)()); }
			MaterialInterface ReplicatedMaterial() { mixin(MGPC!(MaterialInterface, 488)()); }
			StaticMesh ReplicatedMesh() { mixin(MGPC!(StaticMesh, 484)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'LightEnvironment'!
			// WARNING: Property 'StaticMeshComponent' has the same name as a defined type!
		}
		bool bSafeBaseIfAsleep() { mixin(MGBPC!(492, 0x4)()); }
		bool bSafeBaseIfAsleep(bool val) { mixin(MSBPC!(492, 0x4)()); }
		bool bPawnCanBaseOn() { mixin(MGBPC!(492, 0x2)()); }
		bool bPawnCanBaseOn(bool val) { mixin(MSBPC!(492, 0x2)()); }
		bool bForceStaticDecals() { mixin(MGBPC!(492, 0x1)()); }
		bool bForceStaticDecals(bool val) { mixin(MSBPC!(492, 0x1)()); }
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
