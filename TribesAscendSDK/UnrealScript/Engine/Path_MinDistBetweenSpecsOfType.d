module UnrealScript.Engine.Path_MinDistBetweenSpecsOfType;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PathConstraint;

extern(C++) interface Path_MinDistBetweenSpecsOfType : PathConstraint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Path_MinDistBetweenSpecsOfType")); }
	private static __gshared Path_MinDistBetweenSpecsOfType mDefaultProperties;
	@property final static Path_MinDistBetweenSpecsOfType DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Path_MinDistBetweenSpecsOfType)("Path_MinDistBetweenSpecsOfType Engine.Default__Path_MinDistBetweenSpecsOfType")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mEnforceMinDist;
			ScriptFunction mRecycle;
		}
		public @property static final
		{
			ScriptFunction EnforceMinDist() { return mEnforceMinDist ? mEnforceMinDist : (mEnforceMinDist = ScriptObject.Find!(ScriptFunction)("Function Engine.Path_MinDistBetweenSpecsOfType.EnforceMinDist")); }
			ScriptFunction Recycle() { return mRecycle ? mRecycle : (mRecycle = ScriptObject.Find!(ScriptFunction)("Function Engine.Path_MinDistBetweenSpecsOfType.Recycle")); }
		}
	}
	@property final auto ref
	{
		ScriptClass ReachSpecClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 84); }
		Vector InitLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 72); }
		float MinDistBetweenSpecTypes() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
	}
final:
	static bool EnforceMinDist(Pawn P, float InMinDist, ScriptClass InSpecClass, Vector LastLocation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(float*)&params[4] = InMinDist;
		*cast(ScriptClass*)&params[8] = InSpecClass;
		*cast(Vector*)&params[12] = LastLocation;
		StaticClass.ProcessEvent(Functions.EnforceMinDist, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
}
