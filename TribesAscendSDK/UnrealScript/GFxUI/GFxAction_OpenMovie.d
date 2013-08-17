module UnrealScript.GFxUI.GFxAction_OpenMovie;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.TextureRenderTarget2D;
import UnrealScript.GFxUI.GFxMoviePlayer;
import UnrealScript.Engine.SequenceAction;
import UnrealScript.GFxUI.SwfMovie;

extern(C++) interface GFxAction_OpenMovie : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GFxUI.GFxAction_OpenMovie")()); }
	private static __gshared GFxAction_OpenMovie mDefaultProperties;
	@property final static GFxAction_OpenMovie DefaultProperties() { mixin(MGDPC!(GFxAction_OpenMovie, "GFxAction_OpenMovie GFxUI.Default__GFxAction_OpenMovie")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mIsValidLevelSequenceObject;
		public @property static final ScriptFunction IsValidLevelSequenceObject() { mixin(MGF!("mIsValidLevelSequenceObject", "Function GFxUI.GFxAction_OpenMovie.IsValidLevelSequenceObject")()); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(ScriptName) CaptureKeys() { mixin(MGPC!("ScriptArray!(ScriptName)", 256)()); }
			ScriptArray!(ScriptName) FocusIgnoreKeys() { mixin(MGPC!("ScriptArray!(ScriptName)", 268)()); }
			TextureRenderTarget2D RenderTexture() { mixin(MGPC!("TextureRenderTarget2D", 252)()); }
			GFxMoviePlayer.GFxRenderTextureMode RenderTextureMode() { mixin(MGPC!("GFxMoviePlayer.GFxRenderTextureMode", 248)()); }
			GFxMoviePlayer MoviePlayer() { mixin(MGPC!("GFxMoviePlayer", 240)()); }
			ScriptClass MoviePlayerClass() { mixin(MGPC!("ScriptClass", 236)()); }
			SwfMovie Movie() { mixin(MGPC!("SwfMovie", 232)()); }
		}
		bool bDisplayWithHudOff() { mixin(MGBPC!(244, 0x10)()); }
		bool bDisplayWithHudOff(bool val) { mixin(MSBPC!(244, 0x10)()); }
		bool bEnableGammaCorrection() { mixin(MGBPC!(244, 0x8)()); }
		bool bEnableGammaCorrection(bool val) { mixin(MSBPC!(244, 0x8)()); }
		bool bStartPaused() { mixin(MGBPC!(244, 0x4)()); }
		bool bStartPaused(bool val) { mixin(MSBPC!(244, 0x4)()); }
		bool bCaptureInput() { mixin(MGBPC!(244, 0x2)()); }
		bool bCaptureInput(bool val) { mixin(MSBPC!(244, 0x2)()); }
		bool bTakeFocus() { mixin(MGBPC!(244, 0x1)()); }
		bool bTakeFocus(bool val) { mixin(MSBPC!(244, 0x1)()); }
	}
	final bool IsValidLevelSequenceObject()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsValidLevelSequenceObject, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
