module UnrealScript.Engine.AnimNodeBlendBase;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimNode;

extern(C++) interface AnimNodeBlendBase : AnimNode
{
	struct AnimBlendChild
	{
		public @property final auto ref AnimNode Anim() { return *cast(AnimNode*)(cast(size_t)&this + 8); }
		private ubyte __Anim[4];
		public @property final auto ref int DrawY() { return *cast(int*)(cast(size_t)&this + 24); }
		private ubyte __DrawY[4];
		public @property final bool bIsAdditive() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x2) != 0; }
		public @property final bool bIsAdditive(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x2; } return val; }
		private ubyte __bIsAdditive[4];
		public @property final bool bMirrorSkeleton() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x1) != 0; }
		public @property final bool bMirrorSkeleton(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x1; } return val; }
		private ubyte __bMirrorSkeleton[4];
		public @property final auto ref float BlendWeight() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __BlendWeight[4];
		public @property final auto ref float Weight() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __Weight[4];
		public @property final auto ref ScriptName Name() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __Name[8];
	}
	public @property final auto ref ScriptArray!(AnimNodeBlendBase.AnimBlendChild) Children() { return *cast(ScriptArray!(AnimNodeBlendBase.AnimBlendChild)*)(cast(size_t)cast(void*)this + 224); }
	public @property final auto ref UObject.AlphaBlendType BlendType() { return *cast(UObject.AlphaBlendType*)(cast(size_t)cast(void*)this + 240); }
	public @property final bool bFixNumChildren() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1) != 0; }
	public @property final bool bFixNumChildren(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1; } return val; }
	final void PlayAnim(bool bLoop, float Rate, float StartTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bLoop;
		*cast(float*)&params[4] = Rate;
		*cast(float*)&params[8] = StartTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10708], params.ptr, cast(void*)0);
	}
	final void StopAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10712], cast(void*)0, cast(void*)0);
	}
	final void ReplayAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10713], cast(void*)0, cast(void*)0);
	}
}
