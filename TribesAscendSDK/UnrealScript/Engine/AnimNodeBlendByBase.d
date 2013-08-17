module UnrealScript.Engine.AnimNodeBlendByBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.AnimNodeBlendList;
import UnrealScript.Engine.Actor;

extern(C++) interface AnimNodeBlendByBase : AnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimNodeBlendByBase")()); }
	private static __gshared AnimNodeBlendByBase mDefaultProperties;
	@property final static AnimNodeBlendByBase DefaultProperties() { mixin(MGDPC!(AnimNodeBlendByBase, "AnimNodeBlendByBase Engine.Default__AnimNodeBlendByBase")()); }
	enum EBaseBlendType : ubyte
	{
		BBT_ByActorTag = 0,
		BBT_ByActorClass = 1,
		BBT_MAX = 2,
	}
	@property final auto ref
	{
		Actor CachedBase() { mixin(MGPC!("Actor", 296)()); }
		float BlendTime() { mixin(MGPC!("float", 292)()); }
		ScriptClass ActorClass() { mixin(MGPC!("ScriptClass", 288)()); }
		ScriptName ActorTag() { mixin(MGPC!("ScriptName", 280)()); }
		AnimNodeBlendByBase.EBaseBlendType Type() { mixin(MGPC!("AnimNodeBlendByBase.EBaseBlendType", 276)()); }
	}
}
