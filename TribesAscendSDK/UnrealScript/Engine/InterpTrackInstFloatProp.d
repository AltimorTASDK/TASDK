module UnrealScript.Engine.InterpTrackInstFloatProp;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrackInstProperty;

extern(C++) interface InterpTrackInstFloatProp : InterpTrackInstProperty
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackInstFloatProp")); }
	private static __gshared InterpTrackInstFloatProp mDefaultProperties;
	@property final static InterpTrackInstFloatProp DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackInstFloatProp)("InterpTrackInstFloatProp Engine.Default__InterpTrackInstFloatProp")); }
	@property final auto ref
	{
		float ResetFloat() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
		UObject.Pointer FloatProp() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 68); }
	}
}
