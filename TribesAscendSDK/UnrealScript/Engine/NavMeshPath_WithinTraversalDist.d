module UnrealScript.Engine.NavMeshPath_WithinTraversalDist;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationHandle;
import UnrealScript.Engine.NavMeshPathConstraint;

extern(C++) interface NavMeshPath_WithinTraversalDist : NavMeshPathConstraint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.NavMeshPath_WithinTraversalDist")()); }
	private static __gshared NavMeshPath_WithinTraversalDist mDefaultProperties;
	@property final static NavMeshPath_WithinTraversalDist DefaultProperties() { mixin(MGDPC!(NavMeshPath_WithinTraversalDist, "NavMeshPath_WithinTraversalDist Engine.Default__NavMeshPath_WithinTraversalDist")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mDontExceedMaxDist;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction DontExceedMaxDist() { mixin(MGF!("mDontExceedMaxDist", "Function Engine.NavMeshPath_WithinTraversalDist.DontExceedMaxDist")()); }
			ScriptFunction Recycle() { mixin(MGF!("mRecycle", "Function Engine.NavMeshPath_WithinTraversalDist.Recycle")()); }
		}
	}
	@property final
	{
		auto ref
		{
			float SoftStartPenalty() { mixin(MGPC!("float", 88)()); }
			float MaxTraversalDist() { mixin(MGPC!("float", 80)()); }
		}
		bool bSoft() { mixin(MGBPC!(84, 0x1)()); }
		bool bSoft(bool val) { mixin(MSBPC!(84, 0x1)()); }
	}
final:
	static bool DontExceedMaxDist(NavigationHandle NavHandle, float InMaxTraversalDist, bool* bInSoft = null)
	{
		ubyte params[16];
		params[] = 0;
		*cast(NavigationHandle*)params.ptr = NavHandle;
		*cast(float*)&params[4] = InMaxTraversalDist;
		if (bInSoft !is null)
			*cast(bool*)&params[8] = *bInSoft;
		StaticClass.ProcessEvent(Functions.DontExceedMaxDist, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
}
