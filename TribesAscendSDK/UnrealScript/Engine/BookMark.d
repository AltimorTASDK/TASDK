module UnrealScript.Engine.BookMark;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface BookMark : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.BookMark")); }
	private static __gshared BookMark mDefaultProperties;
	@property final static BookMark DefaultProperties() { mixin(MGDPC("BookMark", "BookMark Engine.Default__BookMark")); }
	@property final auto ref
	{
		Rotator Rotation() { mixin(MGPC("Rotator", 72)); }
		Vector Location() { mixin(MGPC("Vector", 60)); }
	}
}
