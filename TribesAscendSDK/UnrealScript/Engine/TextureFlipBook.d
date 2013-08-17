module UnrealScript.Engine.TextureFlipBook;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Core.UObject;

extern(C++) interface TextureFlipBook : Texture2D
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.TextureFlipBook")()); }
	private static __gshared TextureFlipBook mDefaultProperties;
	@property final static TextureFlipBook DefaultProperties() { mixin(MGDPC!(TextureFlipBook, "TextureFlipBook Engine.Default__TextureFlipBook")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPlay;
			ScriptFunction mPause;
			ScriptFunction mStop;
			ScriptFunction mSetCurrentFrame;
		}
		public @property static final
		{
			ScriptFunction Play() { mixin(MGF!("mPlay", "Function Engine.TextureFlipBook.Play")()); }
			ScriptFunction Pause() { mixin(MGF!("mPause", "Function Engine.TextureFlipBook.Pause")()); }
			ScriptFunction Stop() { mixin(MGF!("mStop", "Function Engine.TextureFlipBook.Stop")()); }
			ScriptFunction SetCurrentFrame() { mixin(MGF!("mSetCurrentFrame", "Function Engine.TextureFlipBook.SetCurrentFrame")()); }
		}
	}
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
			UObject.Pointer ReleaseResourcesFence() { mixin(MGPC!("UObject.Pointer", 428)()); }
			float RenderOffsetV() { mixin(MGPC!("float", 424)()); }
			float RenderOffsetU() { mixin(MGPC!("float", 420)()); }
			int CurrentColumn() { mixin(MGPC!("int", 416)()); }
			int CurrentRow() { mixin(MGPC!("int", 412)()); }
			float FrameTime() { mixin(MGPC!("float", 408)()); }
			float FrameRate() { mixin(MGPC!("float", 404)()); }
			TextureFlipBook.TextureFlipBookMethod FBMethod() { mixin(MGPC!("TextureFlipBook.TextureFlipBookMethod", 400)()); }
			UObject.Pointer VfTable_FTickableObject() { mixin(MGPC!("UObject.Pointer", 368)()); }
			int VerticalImages() { mixin(MGPC!("int", 396)()); }
			int HorizontalImages() { mixin(MGPC!("int", 392)()); }
			float VerticalScale() { mixin(MGPC!("float", 384)()); }
			float HorizontalScale() { mixin(MGPC!("float", 380)()); }
			float TimeSinceLastFrame() { mixin(MGPC!("float", 376)()); }
			float TimeIntoMovie() { mixin(MGPC!("float", 372)()); }
		}
		bool bAutoPlay() { mixin(MGBPC!(388, 0x8)()); }
		bool bAutoPlay(bool val) { mixin(MSBPC!(388, 0x8)()); }
		bool bLooping() { mixin(MGBPC!(388, 0x4)()); }
		bool bLooping(bool val) { mixin(MSBPC!(388, 0x4)()); }
		bool bStopped() { mixin(MGBPC!(388, 0x2)()); }
		bool bStopped(bool val) { mixin(MSBPC!(388, 0x2)()); }
		bool bPaused() { mixin(MGBPC!(388, 0x1)()); }
		bool bPaused(bool val) { mixin(MSBPC!(388, 0x1)()); }
	}
final:
	void Play()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Play, cast(void*)0, cast(void*)0);
	}
	void Pause()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Pause, cast(void*)0, cast(void*)0);
	}
	void Stop()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Stop, cast(void*)0, cast(void*)0);
	}
	void SetCurrentFrame(int Row, int Col)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Row;
		*cast(int*)&params[4] = Col;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetCurrentFrame, params.ptr, cast(void*)0);
	}
}
