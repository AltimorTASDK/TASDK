module UnrealScript.Engine.ApexDestructibleDamageParameters;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface ApexDestructibleDamageParameters : UObject
{
	enum EDamageParameterOverrideMode : ubyte
	{
		DPOM_Absolute = 0,
		DPOM_Multiplier = 1,
		DPOM_MAX = 2,
	}
	struct DamagePair
	{
		public @property final auto ref ApexDestructibleDamageParameters.DamageParameters Params() { return *cast(ApexDestructibleDamageParameters.DamageParameters*)(cast(size_t)&this + 8); }
		private ubyte __Params[16];
		public @property final auto ref ScriptName DamageCauserName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __DamageCauserName[8];
	}
	struct DamageParameters
	{
		public @property final auto ref float Momentum() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __Momentum[4];
		public @property final auto ref float Radius() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __Radius[4];
		public @property final auto ref float BaseDamage() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __BaseDamage[4];
		public @property final auto ref ApexDestructibleDamageParameters.EDamageParameterOverrideMode OverrideMode() { return *cast(ApexDestructibleDamageParameters.EDamageParameterOverrideMode*)(cast(size_t)&this + 0); }
		private ubyte __OverrideMode[1];
	}
	public @property final auto ref ScriptArray!(ApexDestructibleDamageParameters.DamagePair) DamageMap() { return *cast(ScriptArray!(ApexDestructibleDamageParameters.DamagePair)*)(cast(size_t)cast(void*)this + 60); }
}
