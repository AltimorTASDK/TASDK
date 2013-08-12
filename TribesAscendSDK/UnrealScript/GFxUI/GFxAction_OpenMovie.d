module UnrealScript.GFxUI.GFxAction_OpenMovie;

import ScriptClasses;
import UnrealScript.Engine.TextureRenderTarget2D;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.Engine.SequenceAction;
import UnrealScript.GFxUI.SwfMovie;

extern(C++) interface GFxAction_OpenMovie : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GFxUI.GFxAction_OpenMovie")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mIsValidLevelSequenceObject;
		public @property static final ScriptFunction IsValidLevelSequenceObject() { return mIsValidLevelSequenceObject ? mIsValidLevelSequenceObject : (mIsValidLevelSequenceObject = ScriptObject.Find!(ScriptFunction)("Function GFxUI.GFxAction_OpenMovie.IsValidLevelSequenceObject")); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) CaptureKeys() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 256); }
			ScriptArray!(ScriptName) FocusIgnoreKeys() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)cast(void*)this + 268); }
			TextureRenderTarget2D RenderTexture() { return *cast(TextureRenderTarget2D*)(cast(size_t)cast(void*)this + 252); }
			GFxMoviePlayer.GFxRenderTextureMode RenderTextureMode() { return *cast(GFxMoviePlayer.GFxRenderTextureMode*)(cast(size_t)cast(void*)this + 248); }
			GFxMoviePlayer MoviePlayer() { return *cast(GFxMoviePlayer*)(cast(size_t)cast(void*)this + 240); }
			ScriptClass MoviePlayerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 236); }
			SwfMovie Movie() { return *cast(SwfMovie*)(cast(size_t)cast(void*)this + 232); }
		}
		bool bDisplayWithHudOff() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x10) != 0; }
		bool bDisplayWithHudOff(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x10; } return val; }
		bool bEnableGammaCorrection() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x8) != 0; }
		bool bEnableGammaCorrection(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x8; } return val; }
		bool bStartPaused() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x4) != 0; }
		bool bStartPaused(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x4; } return val; }
		bool bCaptureInput() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x2) != 0; }
		bool bCaptureInput(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x2; } return val; }
		bool bTakeFocus() { return (*cast(uint*)(cast(size_t)cast(void*)this + 244) & 0x1) != 0; }
		bool bTakeFocus(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 244) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 244) &= ~0x1; } return val; }
	}
	final bool IsValidLevelSequenceObject()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsValidLevelSequenceObject, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
