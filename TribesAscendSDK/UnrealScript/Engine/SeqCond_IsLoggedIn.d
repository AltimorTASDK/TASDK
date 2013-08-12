module UnrealScript.Engine.SeqCond_IsLoggedIn;

import ScriptClasses;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_IsLoggedIn : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqCond_IsLoggedIn")); }
	private static __gshared SeqCond_IsLoggedIn mDefaultProperties;
	@property final static SeqCond_IsLoggedIn DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqCond_IsLoggedIn)("SeqCond_IsLoggedIn Engine.Default__SeqCond_IsLoggedIn")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mCheckLogins;
		public @property static final ScriptFunction CheckLogins() { return mCheckLogins ? mCheckLogins : (mCheckLogins = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqCond_IsLoggedIn.CheckLogins")); }
	}
	@property final auto ref int NumNeededLoggedIn() { return *cast(int*)(cast(size_t)cast(void*)this + 208); }
	final bool CheckLogins()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckLogins, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
