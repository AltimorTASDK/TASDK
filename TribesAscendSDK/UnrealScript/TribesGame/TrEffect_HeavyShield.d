module UnrealScript.TribesGame.TrEffect_HeavyShield;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrEffect_Managed;

extern(C++) interface TrEffect_HeavyShield : TrEffect_Managed
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrEffect_HeavyShield")); }
	private static __gshared TrEffect_HeavyShield mDefaultProperties;
	@property final static TrEffect_HeavyShield DefaultProperties() { mixin(MGDPC("TrEffect_HeavyShield", "TrEffect_HeavyShield TribesGame.Default__TrEffect_HeavyShield")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mApply;
			ScriptFunction mRemove;
		}
		public @property static final
		{
			ScriptFunction Apply() { mixin(MGF("mApply", "Function TribesGame.TrEffect_HeavyShield.Apply")); }
			ScriptFunction Remove() { mixin(MGF("mRemove", "Function TribesGame.TrEffect_HeavyShield.Remove")); }
		}
	}
final:
	void Apply(Actor Target, Actor.ImpactInfo* Impact = null)
	{
		ubyte params[84];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		if (Impact !is null)
			*cast(Actor.ImpactInfo*)&params[4] = *Impact;
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
