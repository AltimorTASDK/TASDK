module UnrealScript.Engine.SeqAct_ActorFactory;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface SeqAct_ActorFactory : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_ActorFactory")); }
	private static __gshared SeqAct_ActorFactory mDefaultProperties;
	@property final static SeqAct_ActorFactory DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_ActorFactory)("SeqAct_ActorFactory Engine.Default__SeqAct_ActorFactory")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_ActorFactory.GetObjClassVersion")); }
	}
	enum EPointSelection : ubyte
	{
		PS_Normal = 0,
		PS_Random = 1,
		PS_Reverse = 2,
		PS_MAX = 3,
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(Actor) SpawnPoints() { return *cast(ScriptArray!(Actor)*)(cast(size_t)cast(void*)this + 260); }
			ScriptArray!(Vector) SpawnLocations() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 272); }
			ScriptArray!(Vector) SpawnOrientations() { return *cast(ScriptArray!(Vector)*)(cast(size_t)cast(void*)this + 284); }
			float RemainingDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
			int SpawnedCount() { return *cast(int*)(cast(size_t)cast(void*)this + 308); }
			int LastSpawnIdx() { return *cast(int*)(cast(size_t)cast(void*)this + 304); }
			float SpawnDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 300); }
			int SpawnCount() { return *cast(int*)(cast(size_t)cast(void*)this + 296); }
			SeqAct_ActorFactory.EPointSelection PointSelection() { return *cast(SeqAct_ActorFactory.EPointSelection*)(cast(size_t)cast(void*)this + 256); }
			// WARNING: Property 'Factory' has the same name as a defined type!
		}
		bool bCheckSpawnCollision() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x4) != 0; }
		bool bCheckSpawnCollision(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x4; } return val; }
		bool bIsSpawning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x2) != 0; }
		bool bIsSpawning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x2; } return val; }
		bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x1) != 0; }
		bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x1; } return val; }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
