module UnrealScript.UDKBase.UDKAnimBlendByHoverboardTurn;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface UDKAnimBlendByHoverboardTurn : AnimNodeBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKAnimBlendByHoverboardTurn")()); }
	private static __gshared UDKAnimBlendByHoverboardTurn mDefaultProperties;
	@property final static UDKAnimBlendByHoverboardTurn DefaultProperties() { mixin(MGDPC!(UDKAnimBlendByHoverboardTurn, "UDKAnimBlendByHoverboardTurn UDKBase.Default__UDKAnimBlendByHoverboardTurn")()); }
	@property final auto ref
	{
		float CurrentAnimWeight() { mixin(MGPC!(float, 252)()); }
		float MaxBlendPerSec() { mixin(MGPC!(float, 248)()); }
		float TurnScale() { mixin(MGPC!(float, 244)()); }
	}
}
