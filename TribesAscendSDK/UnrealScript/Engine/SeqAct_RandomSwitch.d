module UnrealScript.Engine.SeqAct_RandomSwitch;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Switch;

extern(C++) interface SeqAct_RandomSwitch : SeqAct_Switch
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_RandomSwitch")); }
	private static __gshared SeqAct_RandomSwitch mDefaultProperties;
	@property final static SeqAct_RandomSwitch DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_RandomSwitch)("SeqAct_RandomSwitch Engine.Default__SeqAct_RandomSwitch")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_RandomSwitch.GetObjClassVersion")); }
	}
	@property final auto ref ScriptArray!(int) AutoDisabledIndices() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 256); }
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
