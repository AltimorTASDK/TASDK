module UnrealScript.Engine.KismetBookMark;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.BookMark2D;

extern(C++) interface KismetBookMark : BookMark2D
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.KismetBookMark")()); }
	private static __gshared KismetBookMark mDefaultProperties;
	@property final static KismetBookMark DefaultProperties() { mixin(MGDPC!(KismetBookMark, "KismetBookMark Engine.Default__KismetBookMark")()); }
	@property final auto ref ScriptString BookMarkSequencePathName() { mixin(MGPC!(ScriptString, 72)()); }
}
