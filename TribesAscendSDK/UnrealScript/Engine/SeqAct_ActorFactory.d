module UnrealScript.Engine.SeqAct_ActorFactory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ActorFactory;

extern(C++) interface SeqAct_ActorFactory : SeqAct_Latent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_ActorFactory")); }
	private static __gshared SeqAct_ActorFactory mDefaultProperties;
	@property final static SeqAct_ActorFactory DefaultProperties() { mixin(MGDPC("SeqAct_ActorFactory", "SeqAct_ActorFactory Engine.Default__SeqAct_ActorFactory")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF("mGetObjClassVersion", "Function Engine.SeqAct_ActorFactory.GetObjClassVersion")); }
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
			ScriptArray!(Actor) SpawnPoints() { mixin(MGPC("ScriptArray!(Actor)", 260)); }
			ScriptArray!(Vector) SpawnLocations() { mixin(MGPC("ScriptArray!(Vector)", 272)); }
			ScriptArray!(Vector) SpawnOrientations() { mixin(MGPC("ScriptArray!(Vector)", 284)); }
			float RemainingDelay() { mixin(MGPC("float", 312)); }
			int SpawnedCount() { mixin(MGPC("int", 308)); }
			int LastSpawnIdx() { mixin(MGPC("int", 304)); }
			float SpawnDelay() { mixin(MGPC("float", 300)); }
			int SpawnCount() { mixin(MGPC("int", 296)); }
			SeqAct_ActorFactory.EPointSelection PointSelection() { mixin(MGPC("SeqAct_ActorFactory.EPointSelection", 256)); }
			// WARNING: Property 'Factory' has the same name as a defined type!
		}
		bool bCheckSpawnCollision() { mixin(MGBPC(248, 0x4)); }
		bool bCheckSpawnCollision(bool val) { mixin(MSBPC(248, 0x4)); }
		bool bIsSpawning() { mixin(MGBPC(248, 0x2)); }
		bool bIsSpawning(bool val) { mixin(MSBPC(248, 0x2)); }
		bool bEnabled() { mixin(MGBPC(248, 0x1)); }
		bool bEnabled(bool val) { mixin(MSBPC(248, 0x1)); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
