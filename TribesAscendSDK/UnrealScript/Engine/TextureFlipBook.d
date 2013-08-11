module UnrealScript.Engine.TextureFlipBook;

import ScriptClasses;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Core.UObject;

extern(C++) interface TextureFlipBook : Texture2D
{
	enum TextureFlipBookMethod : ubyte
	{
		TFBM_UL_ROW = 0,
		TFBM_UL_COL = 1,
		TFBM_UR_ROW = 2,
		TFBM_UR_COL = 3,
		TFBM_LL_ROW = 4,
		TFBM_LL_COL = 5,
		TFBM_LR_ROW = 6,
		TFBM_LR_COL = 7,
		TFBM_RANDOM = 8,
		TFBM_MAX = 9,
	}
	public @property final auto ref UObject.Pointer ReleaseResourcesFence() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 428); }
	public @property final auto ref float RenderOffsetV() { return *cast(float*)(cast(size_t)cast(void*)this + 424); }
	public @property final auto ref float RenderOffsetU() { return *cast(float*)(cast(size_t)cast(void*)this + 420); }
	public @property final auto ref int CurrentColumn() { return *cast(int*)(cast(size_t)cast(void*)this + 416); }
	public @property final auto ref int CurrentRow() { return *cast(int*)(cast(size_t)cast(void*)this + 412); }
	public @property final auto ref float FrameTime() { return *cast(float*)(cast(size_t)cast(void*)this + 408); }
	public @property final auto ref float FrameRate() { return *cast(float*)(cast(size_t)cast(void*)this + 404); }
	public @property final auto ref TextureFlipBook.TextureFlipBookMethod FBMethod() { return *cast(TextureFlipBook.TextureFlipBookMethod*)(cast(size_t)cast(void*)this + 400); }
	public @property final auto ref UObject.Pointer VfTable_FTickableObject() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 368); }
	public @property final auto ref int VerticalImages() { return *cast(int*)(cast(size_t)cast(void*)this + 396); }
	public @property final auto ref int HorizontalImages() { return *cast(int*)(cast(size_t)cast(void*)this + 392); }
	public @property final bool bAutoPlay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 388) & 0x8) != 0; }
	public @property final bool bAutoPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 388) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 388) &= ~0x8; } return val; }
	public @property final bool bLooping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 388) & 0x4) != 0; }
	public @property final bool bLooping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 388) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 388) &= ~0x4; } return val; }
	public @property final bool bStopped() { return (*cast(uint*)(cast(size_t)cast(void*)this + 388) & 0x2) != 0; }
	public @property final bool bStopped(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 388) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 388) &= ~0x2; } return val; }
	public @property final bool bPaused() { return (*cast(uint*)(cast(size_t)cast(void*)this + 388) & 0x1) != 0; }
	public @property final bool bPaused(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 388) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 388) &= ~0x1; } return val; }
	public @property final auto ref float VerticalScale() { return *cast(float*)(cast(size_t)cast(void*)this + 384); }
	public @property final auto ref float HorizontalScale() { return *cast(float*)(cast(size_t)cast(void*)this + 380); }
	public @property final auto ref float TimeSinceLastFrame() { return *cast(float*)(cast(size_t)cast(void*)this + 376); }
	public @property final auto ref float TimeIntoMovie() { return *cast(float*)(cast(size_t)cast(void*)this + 372); }
	final void Play()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27984], cast(void*)0, cast(void*)0);
	}
	final void Pause()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27985], cast(void*)0, cast(void*)0);
	}
	final void Stop()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27986], cast(void*)0, cast(void*)0);
	}
	final void SetCurrentFrame(int Row, int Col)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Row;
		*cast(int*)&params[4] = Col;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27987], params.ptr, cast(void*)0);
	}
}
