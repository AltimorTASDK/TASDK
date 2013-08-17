module UnrealScript.Engine.SeqAct_SetLocation;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_SetLocation : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_SetLocation")()); }
	private static __gshared SeqAct_SetLocation mDefaultProperties;
	@property final static SeqAct_SetLocation DefaultProperties() { mixin(MGDPC!(SeqAct_SetLocation, "SeqAct_SetLocation Engine.Default__SeqAct_SetLocation")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function Engine.SeqAct_SetLocation.GetObjClassVersion")()); }
	}
	@property final
	{
		auto ref
		{
			UObject Target() { mixin(MGPC!("UObject", 260)()); }
			Rotator RotationValue() { mixin(MGPC!("Rotator", 248)()); }
			Vector LocationValue() { mixin(MGPC!("Vector", 236)()); }
		}
		bool bSetRotation() { mixin(MGBPC!(232, 0x2)()); }
		bool bSetRotation(bool val) { mixin(MSBPC!(232, 0x2)()); }
		bool bSetLocation() { mixin(MGBPC!(232, 0x1)()); }
		bool bSetLocation(bool val) { mixin(MSBPC!(232, 0x1)()); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
