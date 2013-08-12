module UnrealScript.Core.DistributionFloat;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Core.Component;

extern(C++) interface DistributionFloat : Component
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Core.DistributionFloat")); }
	private static __gshared DistributionFloat mDefaultProperties;
	@property final static DistributionFloat DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(DistributionFloat)("DistributionFloat Core.Default__DistributionFloat")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetFloatValue;
		public @property static final ScriptFunction GetFloatValue() { return mGetFloatValue ? mGetFloatValue : (mGetFloatValue = ScriptObject.Find!(ScriptFunction)("Function Core.DistributionFloat.GetFloatValue")); }
	}
	struct RawDistributionFloat
	{
		private ubyte __buffer__[28];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Core.DistributionFloat.RawDistributionFloat")); }
		@property final auto ref
		{
			ubyte Type() { return *cast(ubyte*)(cast(size_t)&this + 0); }
			ubyte Op() { return *cast(ubyte*)(cast(size_t)&this + 1); }
			ubyte LookupTableNumElements() { return *cast(ubyte*)(cast(size_t)&this + 2); }
			ubyte LookupTableChunkSize() { return *cast(ubyte*)(cast(size_t)&this + 3); }
			ScriptArray!(float) LookupTable() { return *cast(ScriptArray!(float)*)(cast(size_t)&this + 4); }
			float LookupTableTimeScale() { return *cast(float*)(cast(size_t)&this + 16); }
			float LookupTableStartTime() { return *cast(float*)(cast(size_t)&this + 20); }
		}
	}
	@property final
	{
		@property final auto ref UObject.Pointer VfTable_FCurveEdInterface() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 72); }
		bool bIsDirty() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x2) != 0; }
		bool bIsDirty(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x2; } return val; }
		bool bCanBeBaked() { return (*cast(uint*)(cast(size_t)cast(void*)this + 76) & 0x1) != 0; }
		bool bCanBeBaked(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 76) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 76) &= ~0x1; } return val; }
	}
	final float GetFloatValue(float F)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = F;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFloatValue, params.ptr, cast(void*)0);
		return *cast(float*)&params[4];
	}
}
