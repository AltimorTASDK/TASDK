module UnrealScript.Engine.NavMeshPathConstraint;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface NavMeshPathConstraint : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.NavMeshPathConstraint")()); }
	private static __gshared NavMeshPathConstraint mDefaultProperties;
	@property final static NavMeshPathConstraint DefaultProperties() { mixin(MGDPC!(NavMeshPathConstraint, "NavMeshPathConstraint Engine.Default__NavMeshPathConstraint")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mRecycle;
			ScriptFunction mGetDumpString;
		}
		public @property static final
		{
			ScriptFunction Recycle() { mixin(MGF!("mRecycle", "Function Engine.NavMeshPathConstraint.Recycle")()); }
			ScriptFunction GetDumpString() { mixin(MGF!("mGetDumpString", "Function Engine.NavMeshPathConstraint.GetDumpString")()); }
		}
	}
	@property final auto ref
	{
		float AddedHeuristicCost() { mixin(MGPC!("float", 76)()); }
		float AddedDirectCost() { mixin(MGPC!("float", 72)()); }
		int NumThrownOutNodes() { mixin(MGPC!("int", 68)()); }
		int NumNodesProcessed() { mixin(MGPC!("int", 64)()); }
		NavMeshPathConstraint NextConstraint() { mixin(MGPC!("NavMeshPathConstraint", 60)()); }
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
