module UnrealScript.Engine.AnimNodeBlendBase;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimNode;

extern(C++) interface AnimNodeBlendBase : AnimNode
{
public extern(D):
	struct AnimBlendChild
	{
		private ubyte __buffer__[28];
	public extern(D):
		@property final
		{
			auto ref
			{
				AnimNode Anim() { return *cast(AnimNode*)(cast(size_t)&this + 8); }
				int DrawY() { return *cast(int*)(cast(size_t)&this + 24); }
				float BlendWeight() { return *cast(float*)(cast(size_t)&this + 16); }
				float Weight() { return *cast(float*)(cast(size_t)&this + 12); }
				ScriptName Name() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			}
			bool bIsAdditive() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x2) != 0; }
			bool bIsAdditive(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x2; } return val; }
			bool bMirrorSkeleton() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x1) != 0; }
			bool bMirrorSkeleton(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(AnimNodeBlendBase.AnimBlendChild) Children() { return *cast(ScriptArray!(AnimNodeBlendBase.AnimBlendChild)*)(cast(size_t)cast(void*)this + 224); }
			UObject.AlphaBlendType BlendType() { return *cast(UObject.AlphaBlendType*)(cast(size_t)cast(void*)this + 240); }
		}
		bool bFixNumChildren() { return (*cast(uint*)(cast(size_t)cast(void*)this + 236) & 0x1) != 0; }
		bool bFixNumChildren(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 236) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 236) &= ~0x1; } return val; }
	}
final:
	void PlayAnim(bool bLoop, float Rate, float StartTime)
	{
		ubyte params[12];
		params[] = 0;
		*cast(bool*)params.ptr = bLoop;
		*cast(float*)&params[4] = Rate;
		*cast(float*)&params[8] = StartTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10708], params.ptr, cast(void*)0);
	}
	void StopAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10712], cast(void*)0, cast(void*)0);
	}
	void ReplayAnim()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[10713], cast(void*)0, cast(void*)0);
	}
}
