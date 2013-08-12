module UnrealScript.Engine.InterpTrackInstLinearColorProp;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrackInstProperty;

extern(C++) interface InterpTrackInstLinearColorProp : InterpTrackInstProperty
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackInstLinearColorProp")); }
	private static __gshared InterpTrackInstLinearColorProp mDefaultProperties;
	@property final static InterpTrackInstLinearColorProp DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackInstLinearColorProp)("InterpTrackInstLinearColorProp Engine.Default__InterpTrackInstLinearColorProp")); }
	@property final auto ref
	{
		UObject.LinearColor ResetColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 72); }
		UObject.Pointer ColorProp() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 68); }
	}
}
