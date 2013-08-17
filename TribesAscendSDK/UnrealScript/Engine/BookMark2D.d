module UnrealScript.Engine.BookMark2D;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface BookMark2D : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.BookMark2D")()); }
	private static __gshared BookMark2D mDefaultProperties;
	@property final static BookMark2D DefaultProperties() { mixin(MGDPC!(BookMark2D, "BookMark2D Engine.Default__BookMark2D")()); }
	@property final auto ref
	{
		UObject.IntPoint Location() { mixin(MGPC!("UObject.IntPoint", 64)()); }
		float Zoom2D() { mixin(MGPC!("float", 60)()); }
	}
}
