module UnrealScript.Engine.SeqEvent_TakeDamage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Engine.Actor;

extern(C++) interface SeqEvent_TakeDamage : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqEvent_TakeDamage")()); }
	private static __gshared SeqEvent_TakeDamage mDefaultProperties;
	@property final static SeqEvent_TakeDamage DefaultProperties() { mixin(MGDPC!(SeqEvent_TakeDamage, "SeqEvent_TakeDamage Engine.Default__SeqEvent_TakeDamage")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mIsValidDamageType;
			ScriptFunction mHandleDamage;
			ScriptFunction mReset;
			ScriptFunction mGetObjClassVersion;
			ScriptFunction mToggled;
		}
		public @property static final
		{
			ScriptFunction IsValidDamageType() { mixin(MGF!("mIsValidDamageType", "Function Engine.SeqEvent_TakeDamage.IsValidDamageType")()); }
			ScriptFunction HandleDamage() { mixin(MGF!("mHandleDamage", "Function Engine.SeqEvent_TakeDamage.HandleDamage")()); }
			ScriptFunction Reset() { mixin(MGF!("mReset", "Function Engine.SeqEvent_TakeDamage.Reset")()); }
			ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function Engine.SeqEvent_TakeDamage.GetObjClassVersion")()); }
			ScriptFunction Toggled() { mixin(MGF!("mToggled", "Function Engine.SeqEvent_TakeDamage.Toggled")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptClass) DamageTypes() { mixin(MGPC!("ScriptArray!(ScriptClass)", 264)()); }
			ScriptArray!(ScriptClass) IgnoreDamageTypes() { mixin(MGPC!("ScriptArray!(ScriptClass)", 276)()); }
			float CurrentDamage() { mixin(MGPC!("float", 288)()); }
			float DamageThreshold() { mixin(MGPC!("float", 260)()); }
			float MinDamageAmount() { mixin(MGPC!("float", 256)()); }
		}
		bool bResetDamageOnToggle() { mixin(MGBPC!(292, 0x1)()); }
		bool bResetDamageOnToggle(bool val) { mixin(MSBPC!(292, 0x1)()); }
	}
final:
	bool IsValidDamageType(ScriptClass inDamageType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptClass*)params.ptr = inDamageType;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsValidDamageType, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void HandleDamage(Actor InOriginator, Actor InInstigator, ScriptClass inDamageType, int inAmount)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = InOriginator;
		*cast(Actor*)&params[4] = InInstigator;
		*cast(ScriptClass*)&params[8] = inDamageType;
		*cast(int*)&params[12] = inAmount;
		(cast(ScriptObject)this).ProcessEvent(Functions.HandleDamage, params.ptr, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void Toggled()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Toggled, cast(void*)0, cast(void*)0);
	}
}
