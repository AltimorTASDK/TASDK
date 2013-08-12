module UnrealScript.Engine.InterpFilter_Classes;

import ScriptClasses;
import UnrealScript.Engine.InterpFilter;

extern(C++) interface InterpFilter_Classes : InterpFilter
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpFilter_Classes")); }
	private static __gshared InterpFilter_Classes mDefaultProperties;
	@property final static InterpFilter_Classes DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpFilter_Classes)("InterpFilter_Classes Engine.Default__InterpFilter_Classes")); }
	@property final auto ref
	{
		ScriptArray!(ScriptClass) TrackClasses() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 76); }
		ScriptClass ClassToFilterBy() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 72); }
	}
}
