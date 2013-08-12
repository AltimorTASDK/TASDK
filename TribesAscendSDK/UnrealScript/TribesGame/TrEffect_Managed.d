module UnrealScript.TribesGame.TrEffect_Managed;

import ScriptClasses;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrEffect;

extern(C++) interface TrEffect_Managed : TrEffect
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrEffect_Managed")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mApply;
			ScriptFunction mRemoveEffect;
			ScriptFunction mRemove;
		}
		public @property static final
		{
			ScriptFunction Apply() { return mApply ? mApply : (mApply = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEffect_Managed.Apply")); }
			ScriptFunction RemoveEffect() { return mRemoveEffect ? mRemoveEffect : (mRemoveEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEffect_Managed.RemoveEffect")); }
			ScriptFunction Remove() { return mRemove ? mRemove : (mRemove = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEffect_Managed.Remove")); }
		}
	}
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
		(cast(ScriptObject)this).ProcessEvent(Functions.Apply, params.ptr, cast(void*)0);
	}
	void RemoveEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveEffect, cast(void*)0, cast(void*)0);
	}
	void Remove(Actor Target)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		(cast(ScriptObject)this).ProcessEvent(Functions.Remove, params.ptr, cast(void*)0);
	}
}
