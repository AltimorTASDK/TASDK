module UnrealScript.Engine.InterpTrackInstColorProp;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrackInstProperty;

extern(C++) interface InterpTrackInstColorProp : InterpTrackInstProperty
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackInstColorProp")); }
	private static __gshared InterpTrackInstColorProp mDefaultProperties;
	@property final static InterpTrackInstColorProp DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackInstColorProp)("InterpTrackInstColorProp Engine.Default__InterpTrackInstColorProp")); }
	@property final auto ref
	{
		UObject.Color ResetColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 72); }
		UObject.Pointer ColorProp() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 68); }
	}
}
