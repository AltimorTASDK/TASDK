module UnrealScript.GameFramework.GameCrowdRepulsor;

import ScriptClasses;
import UnrealScript.GameFramework.GameCrowdAgent;
import UnrealScript.GameFramework.GameCrowdForcePoint;

extern(C++) interface GameCrowdRepulsor : GameCrowdForcePoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.GameCrowdRepulsor")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mAppliedForce;
		public @property static final ScriptFunction AppliedForce() { return mAppliedForce ? mAppliedForce : (mAppliedForce = ScriptObject.Find!(ScriptFunction)("Function GameFramework.GameCrowdRepulsor.AppliedForce")); }
	}
	@property final
	{
		@property final auto ref float Repulsion() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
		bool bAttractionFalloff() { return (*cast(uint*)(cast(size_t)cast(void*)this + 488) & 0x1) != 0; }
		bool bAttractionFalloff(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 488) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 488) &= ~0x1; } return val; }
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
