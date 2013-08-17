module UnrealScript.Engine.NavMeshGoal_Filter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface NavMeshGoal_Filter : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.NavMeshGoal_Filter")()); }
	private static __gshared NavMeshGoal_Filter mDefaultProperties;
	@property final static NavMeshGoal_Filter DefaultProperties() { mixin(MGDPC!(NavMeshGoal_Filter, "NavMeshGoal_Filter Engine.Default__NavMeshGoal_Filter")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetDumpString;
		public @property static final ScriptFunction GetDumpString() { mixin(MGF!("mGetDumpString", "Function Engine.NavMeshGoal_Filter.GetDumpString")()); }
	}
	@property final
	{
		auto ref
		{
			int NumNodesProcessed() { mixin(MGPC!("int", 68)()); }
			int NumNodesThrownOut() { mixin(MGPC!("int", 64)()); }
		}
		bool bShowDebug() { mixin(MGBPC!(60, 0x1)()); }
		bool bShowDebug(bool val) { mixin(MSBPC!(60, 0x1)()); }
	}
	final ScriptString GetDumpString()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDumpString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
