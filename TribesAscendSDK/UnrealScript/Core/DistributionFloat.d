module UnrealScript.Core.DistributionFloat;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Core.Component;

extern(C++) interface DistributionFloat : Component
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Core.DistributionFloat")); }
	private static __gshared DistributionFloat mDefaultProperties;
	@property final static DistributionFloat DefaultProperties() { mixin(MGDPC("DistributionFloat", "DistributionFloat Core.Default__DistributionFloat")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetFloatValue;
		public @property static final ScriptFunction GetFloatValue() { mixin(MGF("mGetFloatValue", "Function Core.DistributionFloat.GetFloatValue")); }
	}
	struct RawDistributionFloat
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.DistributionFloat.RawDistributionFloat")); }
		@property final auto ref
		{
			ubyte Type() { mixin(MGPS("ubyte", 0)); }
			ubyte Op() { mixin(MGPS("ubyte", 1)); }
			ubyte LookupTableNumElements() { mixin(MGPS("ubyte", 2)); }
			ubyte LookupTableChunkSize() { mixin(MGPS("ubyte", 3)); }
			ScriptArray!(float) LookupTable() { mixin(MGPS("ScriptArray!(float)", 4)); }
			float LookupTableTimeScale() { mixin(MGPS("float", 16)); }
			float LookupTableStartTime() { mixin(MGPS("float", 20)); }
		}
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'Distribution'!
	}
	@property final
	{
		@property final auto ref UObject.Pointer VfTable_FCurveEdInterface() { mixin(MGPC("UObject.Pointer", 72)); }
		bool bIsDirty() { mixin(MGBPC(76, 0x2)); }
		bool bIsDirty(bool val) { mixin(MSBPC(76, 0x2)); }
		bool bCanBeBaked() { mixin(MGBPC(76, 0x1)); }
		bool bCanBeBaked(bool val) { mixin(MSBPC(76, 0x1)); }
	}
	final float GetFloatValue(float* F = null)
	{
		ubyte params[8];
		params[] = 0;
		if (F !is null)
			*cast(float*)params.ptr = *F;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFloatValue, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
}
