module UnrealScript.Engine.MorphNodeWeight;

import ScriptClasses;
import UnrealScript.Engine.MorphNodeWeightBase;

extern(C++) interface MorphNodeWeight : MorphNodeWeightBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.MorphNodeWeight")); }
	private static __gshared MorphNodeWeight mDefaultProperties;
	@property final static MorphNodeWeight DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MorphNodeWeight)("MorphNodeWeight Engine.Default__MorphNodeWeight")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetNodeWeight;
		public @property static final ScriptFunction SetNodeWeight() { return mSetNodeWeight ? mSetNodeWeight : (mSetNodeWeight = ScriptObject.Find!(ScriptFunction)("Function Engine.MorphNodeWeight.SetNodeWeight")); }
	}
	@property final auto ref float NodeWeight() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
	final void SetNodeWeight(float NewWeight)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = NewWeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetNodeWeight, params.ptr, cast(void*)0);
	}
}
