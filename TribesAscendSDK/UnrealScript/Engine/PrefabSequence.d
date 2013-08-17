module UnrealScript.Engine.PrefabSequence;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Sequence;
import UnrealScript.Engine.PrefabInstance;

extern(C++) interface PrefabSequence : Sequence
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PrefabSequence")()); }
	private static __gshared PrefabSequence mDefaultProperties;
	@property final static PrefabSequence DefaultProperties() { mixin(MGDPC!(PrefabSequence, "PrefabSequence Engine.Default__PrefabSequence")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetOwnerPrefab;
			ScriptFunction mGetOwnerPrefab;
		}
		public @property static final
		{
			ScriptFunction SetOwnerPrefab() { mixin(MGF!("mSetOwnerPrefab", "Function Engine.PrefabSequence.SetOwnerPrefab")()); }
			ScriptFunction GetOwnerPrefab() { mixin(MGF!("mGetOwnerPrefab", "Function Engine.PrefabSequence.GetOwnerPrefab")()); }
		}
	}
	@property final auto ref PrefabInstance OwnerPrefab() { mixin(MGPC!("PrefabInstance", 300)()); }
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
