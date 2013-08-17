module UnrealScript.Engine.AnimNodeBlendBySpeed;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeBlendList;

extern(C++) interface AnimNodeBlendBySpeed : AnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimNodeBlendBySpeed")()); }
	private static __gshared AnimNodeBlendBySpeed mDefaultProperties;
	@property final static AnimNodeBlendBySpeed DefaultProperties() { mixin(MGDPC!(AnimNodeBlendBySpeed, "AnimNodeBlendBySpeed Engine.Default__AnimNodeBlendBySpeed")()); }
	@property final
	{
		auto ref
		{
			ScriptArray!(float) Constraints() { mixin(MGPC!(ScriptArray!(float), 296)()); }
			float BlendDelayRemaining() { mixin(MGPC!(float, 320)()); }
			float BlendDownDelay() { mixin(MGPC!(float, 316)()); }
			float BlendUpDelay() { mixin(MGPC!(float, 312)()); }
			float BlendDownPerc() { mixin(MGPC!(float, 292)()); }
			float BlendDownTime() { mixin(MGPC!(float, 288)()); }
			float BlendUpTime() { mixin(MGPC!(float, 284)()); }
			int LastChannel() { mixin(MGPC!(int, 280)()); }
			float Speed() { mixin(MGPC!(float, 276)()); }
		}
		bool bUseAcceleration() { mixin(MGBPC!(308, 0x1)()); }
		bool bUseAcceleration(bool val) { mixin(MSBPC!(308, 0x1)()); }
	}
}
