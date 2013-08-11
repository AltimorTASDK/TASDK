module UnrealScript.TribesGame.TrCallIn_SupportItemPlatform;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrGameObjective;

extern(C++) interface TrCallIn_SupportItemPlatform : Actor
{
public extern(D):
	@property final auto ref
	{
		TrGameObjective r_DeployedItem() { return *cast(TrGameObjective*)(cast(size_t)cast(void*)this + 476); }
		ubyte DefenderTeamIndex() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 496); }
		ScriptName ItemAttachPointName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 488); }
	}
final:
	void GetBoundingCylinder(float* CollisionRadius, float* CollisionHeight)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = *CollisionRadius;
		*cast(float*)&params[4] = *CollisionHeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74134], params.ptr, cast(void*)0);
		*CollisionRadius = *cast(float*)params.ptr;
		*CollisionHeight = *cast(float*)&params[4];
	}
	void Init(Actor DeployableOwner, ScriptClass GameObjectiveClass)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = DeployableOwner;
		*cast(ScriptClass*)&params[4] = GameObjectiveClass;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74137], params.ptr, cast(void*)0);
	}
	ubyte ScriptGetTeamNum()
	{
		ubyte params[1];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74140], params.ptr, cast(void*)0);
		return params[0];
	}
	void HideMesh()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74142], cast(void*)0, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[74144], params.ptr, cast(void*)0);
	}
}
