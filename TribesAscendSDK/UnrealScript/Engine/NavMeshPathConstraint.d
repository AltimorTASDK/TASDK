module UnrealScript.Engine.NavMeshPathConstraint;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface NavMeshPathConstraint : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NavMeshPathConstraint")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mRecycle;
			ScriptFunction mGetDumpString;
		}
		public @property static final
		{
			ScriptFunction Recycle() { return mRecycle ? mRecycle : (mRecycle = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshPathConstraint.Recycle")); }
			ScriptFunction GetDumpString() { return mGetDumpString ? mGetDumpString : (mGetDumpString = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshPathConstraint.GetDumpString")); }
		}
	}
	@property final auto ref
	{
		float AddedHeuristicCost() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
		float AddedDirectCost() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
		int NumThrownOutNodes() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
		int NumNodesProcessed() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
		NavMeshPathConstraint NextConstraint() { return *cast(NavMeshPathConstraint*)(cast(size_t)cast(void*)this + 60); }
	}
final:
	void Recycle()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Recycle, cast(void*)0, cast(void*)0);
	}
	ScriptString GetDumpString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDumpString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
