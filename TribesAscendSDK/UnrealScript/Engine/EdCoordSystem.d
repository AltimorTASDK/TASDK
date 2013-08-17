module UnrealScript.Engine.EdCoordSystem;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface EdCoordSystem : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.EdCoordSystem")); }
	private static __gshared EdCoordSystem mDefaultProperties;
	@property final static EdCoordSystem DefaultProperties() { mixin(MGDPC("EdCoordSystem", "EdCoordSystem Engine.Default__EdCoordSystem")); }
	@property final auto ref
	{
		ScriptString Desc() { mixin(MGPC("ScriptString", 128)); }
		UObject.Matrix M() { mixin(MGPC("UObject.Matrix", 64)); }
	}
}
