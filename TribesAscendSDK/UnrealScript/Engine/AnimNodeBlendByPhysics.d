module UnrealScript.Engine.AnimNodeBlendByPhysics;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeBlendList;

extern(C++) interface AnimNodeBlendByPhysics : AnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimNodeBlendByPhysics")()); }
	private static __gshared AnimNodeBlendByPhysics mDefaultProperties;
	@property final static AnimNodeBlendByPhysics DefaultProperties() { mixin(MGDPC!(AnimNodeBlendByPhysics, "AnimNodeBlendByPhysics Engine.Default__AnimNodeBlendByPhysics")()); }
}
