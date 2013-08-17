module UnrealScript.Core.DistributionVector;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Core.Component;

extern(C++) interface DistributionVector : Component
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Core.DistributionVector")); }
	private static __gshared DistributionVector mDefaultProperties;
	@property final static DistributionVector DefaultProperties() { mixin(MGDPC("DistributionVector", "DistributionVector Core.Default__DistributionVector")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetVectorValue;
		public @property static final ScriptFunction GetVectorValue() { mixin(MGF("mGetVectorValue", "Function Core.DistributionVector.GetVectorValue")); }
	}
	enum EDistributionVectorLockFlags : ubyte
	{
		EDVLF_None = 0,
		EDVLF_XY = 1,
		EDVLF_XZ = 2,
		EDVLF_YZ = 3,
		EDVLF_XYZ = 4,
		EDVLF_MAX = 5,
	}
	enum EDistributionVectorMirrorFlags : ubyte
	{
		EDVMF_Same = 0,
		EDVMF_Different = 1,
		EDVMF_Mirror = 2,
		EDVMF_MAX = 3,
	}
	struct RawDistributionVector
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Core.DistributionVector.RawDistributionVector")); }
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
	final Vector GetVectorValue(float* F = null, int* LastExtreme = null)
	{
		ubyte params[20];
		params[] = 0;
		if (F !is null)
			*cast(float*)params.ptr = *F;
		if (LastExtreme !is null)
			*cast(int*)&params[4] = *LastExtreme;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetVectorValue, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[8];
	}
}
