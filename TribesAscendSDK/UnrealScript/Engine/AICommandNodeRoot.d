module UnrealScript.Engine.AICommandNodeRoot;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AICommandNodeBase;

extern(C++) interface AICommandNodeRoot : AICommandNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AICommandNodeRoot")()); }
	private static __gshared AICommandNodeRoot mDefaultProperties;
	@property final static AICommandNodeRoot DefaultProperties() { mixin(MGDPC!(AICommandNodeRoot, "AICommandNodeRoot Engine.Default__AICommandNodeRoot")()); }
	@property final auto ref ScriptName RootName() { mixin(MGPC!("ScriptName", 100)()); }
}
