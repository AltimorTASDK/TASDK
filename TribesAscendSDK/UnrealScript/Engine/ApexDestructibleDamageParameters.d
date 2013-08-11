module UnrealScript.Engine.ApexDestructibleDamageParameters;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface ApexDestructibleDamageParameters : UObject
{
public extern(D):
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
		@property final auto ref
		{
			ApexDestructibleDamageParameters.DamageParameters Params() { return *cast(ApexDestructibleDamageParameters.DamageParameters*)(cast(size_t)&this + 8); }
			ScriptName DamageCauserName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		}
	}
	struct DamageParameters
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final auto ref
		{
			float Momentum() { return *cast(float*)(cast(size_t)&this + 12); }
			float Radius() { return *cast(float*)(cast(size_t)&this + 8); }
			float BaseDamage() { return *cast(float*)(cast(size_t)&this + 4); }
			ApexDestructibleDamageParameters.EDamageParameterOverrideMode OverrideMode() { return *cast(ApexDestructibleDamageParameters.EDamageParameterOverrideMode*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref ScriptArray!(ApexDestructibleDamageParameters.DamagePair) DamageMap() { return *cast(ScriptArray!(ApexDestructibleDamageParameters.DamagePair)*)(cast(size_t)cast(void*)this + 60); }
}
