module UnrealScript.Engine.Path_MinDistBetweenSpecsOfType;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PathConstraint;

extern(C++) interface Path_MinDistBetweenSpecsOfType : PathConstraint
{
public extern(D):
	@property final auto ref
	{
		ScriptClass ReachSpecClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 84); }
		Vector InitLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 72); }
		float MinDistBetweenSpecTypes() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
	}
final:
	bool EnforceMinDist(Pawn P, float InMinDist, ScriptClass InSpecClass, Vector LastLocation)
	{
		ubyte params[28];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		*cast(float*)&params[4] = InMinDist;
		*cast(ScriptClass*)&params[8] = InSpecClass;
		*cast(Vector*)&params[12] = LastLocation;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23976], params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[23983], cast(void*)0, cast(void*)0);
	}
}
