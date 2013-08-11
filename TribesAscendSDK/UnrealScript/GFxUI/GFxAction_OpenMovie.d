module UnrealScript.GFxUI.GFxAction_OpenMovie;

import ScriptClasses;
import UnrealScript.Engine.TextureRenderTarget2D;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.Engine.SequenceAction;
import UnrealScript.GFxUI.SwfMovie;

extern(C++) interface GFxAction_OpenMovie : SequenceAction
{
	public @property final auto ref ScriptArray!(ScriptName) CaptureKeys() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref ScriptArray!(ScriptName) FocusIgnoreKeys() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref TextureRenderTarget2D RenderTexture() { return *cast(TextureRenderTarget2D*)(cast(size_t)cast(void*)this + 252); }
	public @property final auto ref GFxMoviePlayer.GFxRenderTextureMode RenderTextureMode() { return *cast(GFxMoviePlayer.GFxRenderTextureMode*)(cast(size_t)cast(void*)this + 248); }
	public @property final bool bDisplayWithHudOff() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x10) != 0; }
	public @property final bool bDisplayWithHudOff(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x10; } return val; }
	public @property final bool bEnableGammaCorrection() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x8) != 0; }
	public @property final bool bEnableGammaCorrection(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x8; } return val; }
	public @property final bool bStartPaused() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x4) != 0; }
	public @property final bool bStartPaused(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x4; } return val; }
	public @property final bool bCaptureInput() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x2) != 0; }
	public @property final bool bCaptureInput(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x2; } return val; }
	public @property final bool bTakeFocus() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x1) != 0; }
	public @property final bool bTakeFocus(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x1; } return val; }
	public @property final auto ref GFxMoviePlayer MoviePlayer() { return *cast(GFxMoviePlayer*)(cast(size_t)cast(void*)this + 240); }
	public @property final auto ref ScriptClass MoviePlayerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 236); }
	public @property final auto ref SwfMovie Movie() { return *cast(SwfMovie*)(cast(size_t)cast(void*)this + 232); }
	final bool IsValidLevelSequenceObject()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[29962], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
