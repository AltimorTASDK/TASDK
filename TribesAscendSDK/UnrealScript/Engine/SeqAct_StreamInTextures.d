module UnrealScript.Engine.SeqAct_StreamInTextures;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.Texture;

extern(C++) interface SeqAct_StreamInTextures : SeqAct_Latent
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptArray!(UObject) LocationActors() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 260); }
			ScriptArray!(MaterialInterface) ForceMaterials() { return *cast(ScriptArray!(MaterialInterface)*)(cast(size_t)cast(void*)this + 272); }
			int SelectedCinematicTextureGroups() { return *cast(int*)(cast(size_t)cast(void*)this + 288); }
			Texture.TextureGroupContainer CinematicTextureGroups() { return *cast(Texture.TextureGroupContainer*)(cast(size_t)cast(void*)this + 284); }
			float StopTimestamp() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
			float Seconds() { return *cast(float*)(cast(size_t)cast(void*)this + 252); }
		}
		bool bStreamingActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x2) != 0; }
		bool bStreamingActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x2; } return val; }
		bool bLocationBased() { return (*cast(uint*)(cast(size_t)cast(void*)this + 248) & 0x1) != 0; }
		bool bLocationBased(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 248) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 248) &= ~0x1; } return val; }
	}
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25960], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
