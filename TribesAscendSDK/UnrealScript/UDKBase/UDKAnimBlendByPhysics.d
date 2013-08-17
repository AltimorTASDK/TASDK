module UnrealScript.UDKBase.UDKAnimBlendByPhysics;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKAnimBlendBase;

extern(C++) interface UDKAnimBlendByPhysics : UDKAnimBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKAnimBlendByPhysics")()); }
	private static __gshared UDKAnimBlendByPhysics mDefaultProperties;
	@property final static UDKAnimBlendByPhysics DefaultProperties() { mixin(MGDPC!(UDKAnimBlendByPhysics, "UDKAnimBlendByPhysics UDKBase.Default__UDKAnimBlendByPhysics")()); }
	@property final auto ref
	{
		float PendingTimeToGo() { mixin(MGPC!(float, 356)()); }
		int PendingChildIndex() { mixin(MGPC!(int, 352)()); }
		float LandBlendDelay() { mixin(MGPC!(float, 348)()); }
		int LastPhysics() { mixin(MGPC!(int, 344)()); }
		int PhysicsMap() { mixin(MGPC!(int, 296)()); }
	}
}
