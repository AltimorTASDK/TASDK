module UnrealScript.Engine.InterpTrackInstProperty;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackInst;
import UnrealScript.Core.UObject;
import UnrealScript.Core.Function;

extern(C++) interface InterpTrackInstProperty : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackInstProperty")); }
	private static __gshared InterpTrackInstProperty mDefaultProperties;
	@property final static InterpTrackInstProperty DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackInstProperty)("InterpTrackInstProperty Engine.Default__InterpTrackInstProperty")); }
	@property final auto ref
	{
		UObject PropertyOuterObjectInst() { return *cast(UObject*)(cast(size_t)cast(void*)this + 64); }
		Function PropertyUpdateCallback() { return *cast(Function*)(cast(size_t)cast(void*)this + 60); }
	}
}
