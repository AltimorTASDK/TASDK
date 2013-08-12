module UnrealScript.Engine.PathConstraint;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface PathConstraint : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PathConstraint")); }
	private static __gshared PathConstraint mDefaultProperties;
	@property final static PathConstraint DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PathConstraint)("PathConstraint Engine.Default__PathConstraint")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mRecycle;
			ScriptFunction mGetDumpString;
		}
		public @property static final
		{
			ScriptFunction Recycle() { return mRecycle ? mRecycle : (mRecycle = ScriptObject.Find!(ScriptFunction)("Function Engine.PathConstraint.Recycle")); }
			ScriptFunction GetDumpString() { return mGetDumpString ? mGetDumpString : (mGetDumpString = ScriptObject.Find!(ScriptFunction)("Function Engine.PathConstraint.GetDumpString")); }
		}
	}
	@property final auto ref
	{
		PathConstraint NextConstraint() { return *cast(PathConstraint*)(cast(size_t)cast(void*)this + 64); }
		int CacheIdx() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
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
