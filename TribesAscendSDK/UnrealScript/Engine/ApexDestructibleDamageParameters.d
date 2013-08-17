module UnrealScript.Engine.ApexDestructibleDamageParameters;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface ApexDestructibleDamageParameters : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ApexDestructibleDamageParameters")()); }
	private static __gshared ApexDestructibleDamageParameters mDefaultProperties;
	@property final static ApexDestructibleDamageParameters DefaultProperties() { mixin(MGDPC!(ApexDestructibleDamageParameters, "ApexDestructibleDamageParameters Engine.Default__ApexDestructibleDamageParameters")()); }
	enum EDamageParameterOverrideMode : ubyte
	{
		DPOM_Absolute = 0,
		DPOM_Multiplier = 1,
		DPOM_MAX = 2,
	}
	struct DamagePair
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.ApexDestructibleDamageParameters.DamagePair")()); }
		@property final auto ref
		{
			ApexDestructibleDamageParameters.DamageParameters Params() { mixin(MGPS!(ApexDestructibleDamageParameters.DamageParameters, 8)()); }
			ScriptName DamageCauserName() { mixin(MGPS!(ScriptName, 0)()); }
		}
	}
	struct DamageParameters
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.ApexDestructibleDamageParameters.DamageParameters")()); }
		@property final auto ref
		{
			float Momentum() { mixin(MGPS!(float, 12)()); }
			float Radius() { mixin(MGPS!(float, 8)()); }
			float BaseDamage() { mixin(MGPS!(float, 4)()); }
			ApexDestructibleDamageParameters.EDamageParameterOverrideMode OverrideMode() { mixin(MGPS!(ApexDestructibleDamageParameters.EDamageParameterOverrideMode, 0)()); }
		}
	}
	@property final auto ref ScriptArray!(ApexDestructibleDamageParameters.DamagePair) DamageMap() { mixin(MGPC!(ScriptArray!(ApexDestructibleDamageParameters.DamagePair), 60)()); }
}
