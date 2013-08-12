module UnrealScript.TribesGame.TrEffect_RegenBuff;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrEffect_Managed;

extern(C++) interface TrEffect_RegenBuff : TrEffect_Managed
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrEffect_RegenBuff")); }
	private static __gshared TrEffect_RegenBuff mDefaultProperties;
	@property final static TrEffect_RegenBuff DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrEffect_RegenBuff)("TrEffect_RegenBuff TribesGame.Default__TrEffect_RegenBuff")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mApply;
			ScriptFunction mRemove;
		}
		public @property static final
		{
			ScriptFunction Apply() { return mApply ? mApply : (mApply = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEffect_RegenBuff.Apply")); }
			ScriptFunction Remove() { return mRemove ? mRemove : (mRemove = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEffect_RegenBuff.Remove")); }
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
