module UnrealScript.UTGame.UTDecalManager;

import ScriptClasses;
import UnrealScript.Engine.DecalManager;

extern(C++) interface UTDecalManager : DecalManager
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTDecalManager")); }
	private static __gshared UTDecalManager mDefaultProperties;
	@property final static UTDecalManager DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTDecalManager)("UTDecalManager UTGame.Default__UTDecalManager")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mCanSpawnDecals;
		public @property static final ScriptFunction CanSpawnDecals() { return mCanSpawnDecals ? mCanSpawnDecals : (mCanSpawnDecals = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDecalManager.CanSpawnDecals")); }
	}
	final bool CanSpawnDecals()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.CanSpawnDecals, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
