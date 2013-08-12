module UnrealScript.TribesGame.TrEffect_Blink;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrEffect_Managed;

extern(C++) interface TrEffect_Blink : TrEffect_Managed
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrEffect_Blink")); }
	private static __gshared TrEffect_Blink mDefaultProperties;
	@property final static TrEffect_Blink DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrEffect_Blink)("TrEffect_Blink TribesGame.Default__TrEffect_Blink")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mApply;
		public @property static final ScriptFunction Apply() { return mApply ? mApply : (mApply = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrEffect_Blink.Apply")); }
	}
	final void Apply(Actor Target, Actor.ImpactInfo Impact)
	{
		ubyte params[84];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		(cast(ScriptObject)this).ProcessEvent(Functions.Apply, params.ptr, cast(void*)0);
	}
}
