module UnrealScript.TribesGame.TrEffect_DamageBuff;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrEffect_Managed;

extern(C++) interface TrEffect_DamageBuff : TrEffect_Managed
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrEffect_DamageBuff")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mApply;
			ScriptFunction mRemove;
		}
		public @property static final
		{
			ScriptFunction Apply() { return mApply ? mApply : (mApply = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEffect_DamageBuff.Apply")); }
			ScriptFunction Remove() { return mRemove ? mRemove : (mRemove = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEffect_DamageBuff.Remove")); }
		}
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
	void Remove(Actor Target)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		(cast(ScriptObject)this).ProcessEvent(Functions.Remove, params.ptr, cast(void*)0);
	}
}
