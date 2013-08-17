module UnrealScript.Engine.SeqCond_IsLoggedIn;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_IsLoggedIn : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqCond_IsLoggedIn")()); }
	private static __gshared SeqCond_IsLoggedIn mDefaultProperties;
	@property final static SeqCond_IsLoggedIn DefaultProperties() { mixin(MGDPC!(SeqCond_IsLoggedIn, "SeqCond_IsLoggedIn Engine.Default__SeqCond_IsLoggedIn")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mCheckLogins;
		public @property static final ScriptFunction CheckLogins() { mixin(MGF!("mCheckLogins", "Function Engine.SeqCond_IsLoggedIn.CheckLogins")()); }
	}
	@property final auto ref int NumNeededLoggedIn() { mixin(MGPC!("int", 208)()); }
	final bool CheckLogins()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckLogins, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
