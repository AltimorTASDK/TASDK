module UnrealScript.UDKBase.UDKScout;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Scout;

extern(C++) interface UDKScout : Scout
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKScout")()); }
	private static __gshared UDKScout mDefaultProperties;
	@property final static UDKScout DefaultProperties() { mixin(MGDPC!(UDKScout, "UDKScout UDKBase.Default__UDKScout")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSuggestJumpVelocity;
		public @property static final ScriptFunction SuggestJumpVelocity() { mixin(MGF!("mSuggestJumpVelocity", "Function UDKBase.UDKScout.SuggestJumpVelocity")()); }
	}
	@property final
	{
		auto ref
		{
			ScriptName SizePersonFindName() { mixin(MGPC!(ScriptName, 1296)()); }
			ScriptClass PrototypePawnClass() { mixin(MGPC!(ScriptClass, 1292)()); }
			float MaxDoubleJumpHeight() { mixin(MGPC!(float, 1288)()); }
		}
		bool bRequiresDoubleJump() { mixin(MGBPC!(1284, 0x1)()); }
		bool bRequiresDoubleJump(bool val) { mixin(MSBPC!(1284, 0x1)()); }
	}
	final bool SuggestJumpVelocity(ref Vector JumpVelocity, Vector Destination, Vector Start, bool bRequireFallLanding)
	{
		ubyte params[44];
		params[] = 0;
		*cast(Vector*)params.ptr = JumpVelocity;
		*cast(Vector*)&params[12] = Destination;
		*cast(Vector*)&params[24] = Start;
		*cast(bool*)&params[36] = bRequireFallLanding;
		(cast(ScriptObject)this).ProcessEvent(Functions.SuggestJumpVelocity, params.ptr, cast(void*)0);
		*JumpVelocity = *cast(Vector*)params.ptr;
		return *cast(bool*)&params[40];
	}
}
