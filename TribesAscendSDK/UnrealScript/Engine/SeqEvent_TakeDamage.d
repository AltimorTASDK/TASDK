module UnrealScript.Engine.SeqEvent_TakeDamage;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Engine.Actor;

extern(C++) interface SeqEvent_TakeDamage : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqEvent_TakeDamage")); }
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
			ScriptFunction IsValidDamageType() { return mIsValidDamageType ? mIsValidDamageType : (mIsValidDamageType = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqEvent_TakeDamage.IsValidDamageType")); }
			ScriptFunction HandleDamage() { return mHandleDamage ? mHandleDamage : (mHandleDamage = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqEvent_TakeDamage.HandleDamage")); }
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqEvent_TakeDamage.Reset")); }
			ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqEvent_TakeDamage.GetObjClassVersion")); }
			ScriptFunction Toggled() { return mToggled ? mToggled : (mToggled = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqEvent_TakeDamage.Toggled")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptClass) DamageTypes() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 264); }
			ScriptArray!(ScriptClass) IgnoreDamageTypes() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 276); }
			float CurrentDamage() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
			float DamageThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
			float MinDamageAmount() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
		}
		bool bResetDamageOnToggle() { return (*cast(uint*)(cast(size_t)cast(void*)this + 292) & 0x1) != 0; }
		bool bResetDamageOnToggle(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 292) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 292) &= ~0x1; } return val; }
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
