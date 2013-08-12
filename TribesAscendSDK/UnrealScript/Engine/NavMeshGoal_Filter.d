module UnrealScript.Engine.NavMeshGoal_Filter;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface NavMeshGoal_Filter : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NavMeshGoal_Filter")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetDumpString;
		public @property static final ScriptFunction GetDumpString() { return mGetDumpString ? mGetDumpString : (mGetDumpString = ScriptObject.Find!(ScriptFunction)("Function Engine.NavMeshGoal_Filter.GetDumpString")); }
	}
	@property final
	{
		auto ref
		{
			int NumNodesProcessed() { return *cast(int*)(cast(size_t)cast(void*)this + 68); }
			int NumNodesThrownOut() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
		}
		bool bShowDebug() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
		bool bShowDebug(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
	}
	final ScriptString GetDumpString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDumpString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
