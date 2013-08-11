module UnrealScript.Engine.AnimNodeBlendByBase;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlendList;
import UnrealScript.Engine.Actor;

extern(C++) interface AnimNodeBlendByBase : AnimNodeBlendList
{
	enum EBaseBlendType : ubyte
	{
		BBT_ByActorTag = 0,
		BBT_ByActorClass = 1,
		BBT_MAX = 2,
	}
	public @property final auto ref Actor CachedBase() { return *cast(Actor*)(cast(size_t)cast(void*)this + 296); }
	public @property final auto ref float BlendTime() { return *cast(float*)(cast(size_t)cast(void*)this + 292); }
	public @property final auto ref ScriptClass ActorClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 288); }
	public @property final auto ref ScriptName ActorTag() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 280); }
	public @property final auto ref AnimNodeBlendByBase.EBaseBlendType Type() { return *cast(AnimNodeBlendByBase.EBaseBlendType*)(cast(size_t)cast(void*)this + 276); }
}
