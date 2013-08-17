module UnrealScript.Engine.PathConstraint;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface PathConstraint : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.PathConstraint")()); }
	private static __gshared PathConstraint mDefaultProperties;
	@property final static PathConstraint DefaultProperties() { mixin(MGDPC!(PathConstraint, "PathConstraint Engine.Default__PathConstraint")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mRecycle;
			ScriptFunction mGetDumpString;
		}
		public @property static final
		{
			ScriptFunction Recycle() { mixin(MGF!("mRecycle", "Function Engine.PathConstraint.Recycle")()); }
			ScriptFunction GetDumpString() { mixin(MGF!("mGetDumpString", "Function Engine.PathConstraint.GetDumpString")()); }
		}
	}
	@property final auto ref
	{
		PathConstraint NextConstraint() { mixin(MGPC!(PathConstraint, 64)()); }
		int CacheIdx() { mixin(MGPC!(int, 60)()); }
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
