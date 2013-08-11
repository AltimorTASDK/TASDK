module UnrealScript.TribesGame.TrEffect_Managed;

import ScriptClasses;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrEffect;

extern(C++) interface TrEffect_Managed : TrEffect
{
public extern(D):
	@property final auto ref
	{
		float m_fLifeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
		TrPawn m_PawnTarget() { return *cast(TrPawn*)(cast(size_t)cast(void*)this + 80); }
	}
final:
	void Apply(Actor Target, Actor.ImpactInfo Impact)
	{
		ubyte params[84];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87092], params.ptr, cast(void*)0);
	}
	void RemoveEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87096], cast(void*)0, cast(void*)0);
	}
	void Remove(Actor Target)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[87097], params.ptr, cast(void*)0);
	}
}
