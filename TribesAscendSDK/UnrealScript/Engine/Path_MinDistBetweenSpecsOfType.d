module UnrealScript.Engine.Path_MinDistBetweenSpecsOfType;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PathConstraint;

extern(C++) interface Path_MinDistBetweenSpecsOfType : PathConstraint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.Path_MinDistBetweenSpecsOfType")()); }
	private static __gshared Path_MinDistBetweenSpecsOfType mDefaultProperties;
	@property final static Path_MinDistBetweenSpecsOfType DefaultProperties() { mixin(MGDPC!(Path_MinDistBetweenSpecsOfType, "Path_MinDistBetweenSpecsOfType Engine.Default__Path_MinDistBetweenSpecsOfType")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mEnforceMinDist;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction EnforceMinDist() { mixin(MGF!("mEnforceMinDist", "Function Engine.Path_MinDistBetweenSpecsOfType.EnforceMinDist")()); }
			ScriptFunction Recycle() { mixin(MGF!("mRecycle", "Function Engine.Path_MinDistBetweenSpecsOfType.Recycle")()); }
		}
	}
	@property final auto ref
	{
		ScriptClass ReachSpecClass() { mixin(MGPC!("ScriptClass", 84)()); }
		Vector InitLocation() { mixin(MGPC!("Vector", 72)()); }
		float MinDistBetweenSpecTypes() { mixin(MGPC!("float", 68)()); }
	}
final:
	static bool EnforceMinDist(Pawn P, float InMinDist, ScriptClass InSpecClass, Vector* LastLocation = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(float*)&params[4] = InMinDist;
		*cast(ScriptClass*)&params[8] = InSpecClass;
		if (LastLocation !is null)
			*cast(Vector*)&params[12] = *LastLocation;
		StaticClass.ProcessEvent(Functions.EnforceMinDist, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
}
