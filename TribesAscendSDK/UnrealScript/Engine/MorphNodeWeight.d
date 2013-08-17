module UnrealScript.Engine.MorphNodeWeight;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MorphNodeWeightBase;

extern(C++) interface MorphNodeWeight : MorphNodeWeightBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.MorphNodeWeight")()); }
	private static __gshared MorphNodeWeight mDefaultProperties;
	@property final static MorphNodeWeight DefaultProperties() { mixin(MGDPC!(MorphNodeWeight, "MorphNodeWeight Engine.Default__MorphNodeWeight")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetNodeWeight;
		public @property static final ScriptFunction SetNodeWeight() { mixin(MGF!("mSetNodeWeight", "Function Engine.MorphNodeWeight.SetNodeWeight")()); }
	}
	@property final auto ref float NodeWeight() { mixin(MGPC!(float, 120)()); }
	final void SetNodeWeight(float NewWeight)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewWeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetNodeWeight, params.ptr, cast(void*)0);
	}
}
