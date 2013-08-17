module UnrealScript.TribesGame.TrEffect_Managed;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrEffect;

extern(C++) interface TrEffect_Managed : TrEffect
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrEffect_Managed")()); }
	private static __gshared TrEffect_Managed mDefaultProperties;
	@property final static TrEffect_Managed DefaultProperties() { mixin(MGDPC!(TrEffect_Managed, "TrEffect_Managed TribesGame.Default__TrEffect_Managed")()); }
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
			ScriptFunction Apply() { mixin(MGF!("mApply", "Function TribesGame.TrEffect_Managed.Apply")()); }
			ScriptFunction RemoveEffect() { mixin(MGF!("mRemoveEffect", "Function TribesGame.TrEffect_Managed.RemoveEffect")()); }
			ScriptFunction Remove() { mixin(MGF!("mRemove", "Function TribesGame.TrEffect_Managed.Remove")()); }
		}
	}
	@property final auto ref
	{
		float m_fLifeTime() { mixin(MGPC!(float, 84)()); }
		TrPawn m_PawnTarget() { mixin(MGPC!(TrPawn, 80)()); }
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
