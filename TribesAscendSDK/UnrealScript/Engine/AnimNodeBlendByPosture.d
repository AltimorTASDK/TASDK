module UnrealScript.Engine.AnimNodeBlendByPosture;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeBlendList;

extern(C++) interface AnimNodeBlendByPosture : AnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.AnimNodeBlendByPosture")); }
	private static __gshared AnimNodeBlendByPosture mDefaultProperties;
	@property final static AnimNodeBlendByPosture DefaultProperties() { mixin(MGDPC("AnimNodeBlendByPosture", "AnimNodeBlendByPosture Engine.Default__AnimNodeBlendByPosture")); }
}
