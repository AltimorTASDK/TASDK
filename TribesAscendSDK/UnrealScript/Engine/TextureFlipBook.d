module UnrealScript.Engine.TextureFlipBook;

import ScriptClasses;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Core.UObject;

extern(C++) interface TextureFlipBook : Texture2D
{
public extern(D):
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
	@property final
	{
		auto ref
		{
			UObject.Pointer ReleaseResourcesFence() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 428); }
			float RenderOffsetV() { return *cast(float*)(cast(size_t)cast(void*)this + 424); }
			float RenderOffsetU() { return *cast(float*)(cast(size_t)cast(void*)this + 420); }
			int CurrentColumn() { return *cast(int*)(cast(size_t)cast(void*)this + 416); }
			int CurrentRow() { return *cast(int*)(cast(size_t)cast(void*)this + 412); }
			float FrameTime() { return *cast(float*)(cast(size_t)cast(void*)this + 408); }
			float FrameRate() { return *cast(float*)(cast(size_t)cast(void*)this + 404); }
			TextureFlipBook.TextureFlipBookMethod FBMethod() { return *cast(TextureFlipBook.TextureFlipBookMethod*)(cast(size_t)cast(void*)this + 400); }
			UObject.Pointer VfTable_FTickableObject() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 368); }
			int VerticalImages() { return *cast(int*)(cast(size_t)cast(void*)this + 396); }
			int HorizontalImages() { return *cast(int*)(cast(size_t)cast(void*)this + 392); }
			float VerticalScale() { return *cast(float*)(cast(size_t)cast(void*)this + 384); }
			float HorizontalScale() { return *cast(float*)(cast(size_t)cast(void*)this + 380); }
			float TimeSinceLastFrame() { return *cast(float*)(cast(size_t)cast(void*)this + 376); }
			float TimeIntoMovie() { return *cast(float*)(cast(size_t)cast(void*)this + 372); }
		}
		bool bAutoPlay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 388) & 0x8) != 0; }
		bool bAutoPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 388) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 388) &= ~0x8; } return val; }
		bool bLooping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 388) & 0x4) != 0; }
		bool bLooping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 388) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 388) &= ~0x4; } return val; }
		bool bStopped() { return (*cast(uint*)(cast(size_t)cast(void*)this + 388) & 0x2) != 0; }
		bool bStopped(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 388) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 388) &= ~0x2; } return val; }
		bool bPaused() { return (*cast(uint*)(cast(size_t)cast(void*)this + 388) & 0x1) != 0; }
		bool bPaused(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 388) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 388) &= ~0x1; } return val; }
	}
final:
	void Play()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27984], cast(void*)0, cast(void*)0);
	}
	void Pause()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27985], cast(void*)0, cast(void*)0);
	}
	void Stop()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27986], cast(void*)0, cast(void*)0);
	}
	void SetCurrentFrame(int Row, int Col)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Row;
		*cast(int*)&params[4] = Col;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27987], params.ptr, cast(void*)0);
	}
}
