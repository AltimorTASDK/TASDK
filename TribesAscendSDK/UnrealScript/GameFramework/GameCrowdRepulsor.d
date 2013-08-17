module UnrealScript.GameFramework.GameCrowdRepulsor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.GameFramework.GameCrowdForcePoint;

extern(C++) interface GameCrowdRepulsor : GameCrowdForcePoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.GameCrowdRepulsor")); }
	private static __gshared GameCrowdRepulsor mDefaultProperties;
	@property final static GameCrowdRepulsor DefaultProperties() { mixin(MGDPC("GameCrowdRepulsor", "GameCrowdRepulsor GameFramework.Default__GameCrowdRepulsor")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mAppliedForce;
		public @property static final ScriptFunction AppliedForce() { mixin(MGF("mAppliedForce", "Function GameFramework.GameCrowdRepulsor.AppliedForce")); }
	}
	@property final
	{
		@property final auto ref float Repulsion() { mixin(MGPC("float", 484)); }
		bool bAttractionFalloff() { mixin(MGBPC(488, 0x1)); }
		bool bAttractionFalloff(bool val) { mixin(MSBPC(488, 0x1)); }
	}
	final Vector AppliedForce(GameCrowdAgent Agent)
	{
		ubyte params[16];
		params[] = 0;
		*cast(GameCrowdAgent*)params.ptr = Agent;
		(cast(ScriptObject)this).ProcessEvent(Functions.AppliedForce, params.ptr, cast(void*)0);
		return *cast(Vector*)&params[4];
	}
}
