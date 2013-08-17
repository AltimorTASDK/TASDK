module UnrealScript.UnrealEd.AnimNodeEditInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface AnimNodeEditInfo : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.AnimNodeEditInfo")); }
	private static __gshared AnimNodeEditInfo mDefaultProperties;
	@property final static AnimNodeEditInfo DefaultProperties() { mixin(MGDPC("AnimNodeEditInfo", "AnimNodeEditInfo UnrealEd.Default__AnimNodeEditInfo")); }
}
