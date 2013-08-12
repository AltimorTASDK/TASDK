module UnrealScript.Engine.SeqAct_SetLocation;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_SetLocation : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_SetLocation")); }
	private static __gshared SeqAct_SetLocation mDefaultProperties;
	@property final static SeqAct_SetLocation DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_SetLocation)("SeqAct_SetLocation Engine.Default__SeqAct_SetLocation")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_SetLocation.GetObjClassVersion")); }
	}
	@property final
	{
		auto ref
		{
			UObject Target() { return *cast(UObject*)(cast(size_t)cast(void*)this + 260); }
			Rotator RotationValue() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 248); }
			Vector LocationValue() { return *cast(Vector*)(cast(size_t)cast(void*)this + 236); }
		}
		bool bSetRotation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x2) != 0; }
		bool bSetRotation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x2; } return val; }
		bool bSetLocation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
		bool bSetLocation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
