module UnrealScript.Engine.SeqAct_CameraFade;

import ScriptClasses;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_CameraFade : SequenceAction
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptArray!(PlayerController) CachedPCs() { return *cast(ScriptArray!(PlayerController)*)(cast(size_t)cast(void*)this + 260); }
			float FadeTimeRemaining() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
			float FadeTime() { return *cast(float*)(cast(size_t)cast(void*)this + 248); }
			float FadeOpacity() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
			UObject.Vector2D FadeAlpha() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 236); }
			UObject.Color FadeColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 232); }
		}
		bool bPersistFade() { return (*cast(uint*)(cast(size_t)cast(void*)this + 252) & 0x1) != 0; }
		bool bPersistFade(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 252) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 252) &= ~0x1; } return val; }
	}
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25612], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
