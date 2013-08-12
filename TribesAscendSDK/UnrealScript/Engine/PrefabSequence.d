module UnrealScript.Engine.PrefabSequence;

import ScriptClasses;
import UnrealScript.Engine.Sequence;
import UnrealScript.Engine.PrefabInstance;

extern(C++) interface PrefabSequence : Sequence
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PrefabSequence")); }
	private static __gshared PrefabSequence mDefaultProperties;
	@property final static PrefabSequence DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PrefabSequence)("PrefabSequence Engine.Default__PrefabSequence")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetOwnerPrefab;
			ScriptFunction mGetOwnerPrefab;
		}
		public @property static final
		{
			ScriptFunction SetOwnerPrefab() { return mSetOwnerPrefab ? mSetOwnerPrefab : (mSetOwnerPrefab = ScriptObject.Find!(ScriptFunction)("Function Engine.PrefabSequence.SetOwnerPrefab")); }
			ScriptFunction GetOwnerPrefab() { return mGetOwnerPrefab ? mGetOwnerPrefab : (mGetOwnerPrefab = ScriptObject.Find!(ScriptFunction)("Function Engine.PrefabSequence.GetOwnerPrefab")); }
		}
	}
	@property final auto ref PrefabInstance OwnerPrefab() { return *cast(PrefabInstance*)(cast(size_t)cast(void*)this + 300); }
final:
	void SetOwnerPrefab(PrefabInstance InOwner)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PrefabInstance*)params.ptr = InOwner;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetOwnerPrefab, params.ptr, cast(void*)0);
	}
	PrefabInstance GetOwnerPrefab()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetOwnerPrefab, params.ptr, cast(void*)0);
		return *cast(PrefabInstance*)params.ptr;
	}
}
