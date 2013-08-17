module UnrealScript.GameFramework.MobileMenuScene;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Canvas;
import UnrealScript.Core.UObject;
import UnrealScript.GameFramework.MobilePlayerInput;
import UnrealScript.GameFramework.MobileMenuObject;
import UnrealScript.GameFramework.MobileInputZone;
import UnrealScript.Engine.Font;

extern(C++) interface MobileMenuScene : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.MobileMenuScene")()); }
	private static __gshared MobileMenuScene mDefaultProperties;
	@property final static MobileMenuScene DefaultProperties() { mixin(MGDPC!(MobileMenuScene, "MobileMenuScene GameFramework.Default__MobileMenuScene")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetGlobalScaleX;
			ScriptFunction mGetGlobalScaleY;
			ScriptFunction mInitMenuScene;
			ScriptFunction mRenderScene;
			ScriptFunction mOnTouch;
			ScriptFunction mOnSceneTouch;
			ScriptFunction mOpened;
			ScriptFunction mMadeTopMenu;
			ScriptFunction mClosing;
			ScriptFunction mClosed;
			ScriptFunction mCleanUpScene;
			ScriptFunction mFindMenuObject;
			ScriptFunction mMobileMenuCommand;
		}
		public @property static final
		{
			ScriptFunction GetGlobalScaleX() { mixin(MGF!("mGetGlobalScaleX", "Function GameFramework.MobileMenuScene.GetGlobalScaleX")()); }
			ScriptFunction GetGlobalScaleY() { mixin(MGF!("mGetGlobalScaleY", "Function GameFramework.MobileMenuScene.GetGlobalScaleY")()); }
			ScriptFunction InitMenuScene() { mixin(MGF!("mInitMenuScene", "Function GameFramework.MobileMenuScene.InitMenuScene")()); }
			ScriptFunction RenderScene() { mixin(MGF!("mRenderScene", "Function GameFramework.MobileMenuScene.RenderScene")()); }
			ScriptFunction OnTouch() { mixin(MGF!("mOnTouch", "Function GameFramework.MobileMenuScene.OnTouch")()); }
			ScriptFunction OnSceneTouch() { mixin(MGF!("mOnSceneTouch", "Function GameFramework.MobileMenuScene.OnSceneTouch")()); }
			ScriptFunction Opened() { mixin(MGF!("mOpened", "Function GameFramework.MobileMenuScene.Opened")()); }
			ScriptFunction MadeTopMenu() { mixin(MGF!("mMadeTopMenu", "Function GameFramework.MobileMenuScene.MadeTopMenu")()); }
			ScriptFunction Closing() { mixin(MGF!("mClosing", "Function GameFramework.MobileMenuScene.Closing")()); }
			ScriptFunction Closed() { mixin(MGF!("mClosed", "Function GameFramework.MobileMenuScene.Closed")()); }
			ScriptFunction CleanUpScene() { mixin(MGF!("mCleanUpScene", "Function GameFramework.MobileMenuScene.CleanUpScene")()); }
			ScriptFunction FindMenuObject() { mixin(MGF!("mFindMenuObject", "Function GameFramework.MobileMenuScene.FindMenuObject")()); }
			ScriptFunction MobileMenuCommand() { mixin(MGF!("mMobileMenuCommand", "Function GameFramework.MobileMenuScene.MobileMenuCommand")()); }
		}
	}
	@property final
	{
		auto ref
		{
			float Width() { mixin(MGPC!(float, 104)()); }
			float Height() { mixin(MGPC!(float, 108)()); }
			float Left() { mixin(MGPC!(float, 96)()); }
			float Top() { mixin(MGPC!(float, 100)()); }
			float Opacity() { mixin(MGPC!(float, 116)()); }
			Font SceneCaptionFont() { mixin(MGPC!(Font, 84)()); }
			ScriptArray!(MobileMenuObject) MenuObjects() { mixin(MGPC!(ScriptArray!(MobileMenuObject), 72)()); }
			SoundCue UIUnTouchSound() { mixin(MGPC!(SoundCue, 124)()); }
			SoundCue UITouchSound() { mixin(MGPC!(SoundCue, 120)()); }
			float AuthoredGlobalScale() { mixin(MGPC!(float, 112)()); }
			MobilePlayerInput InputOwner() { mixin(MGPC!(MobilePlayerInput, 88)()); }
			ScriptString MenuName() { mixin(MGPC!(ScriptString, 60)()); }
		}
		bool bApplyGlobalScaleHeight() { mixin(MGBPC!(92, 0x100)()); }
		bool bApplyGlobalScaleHeight(bool val) { mixin(MSBPC!(92, 0x100)()); }
		bool bApplyGlobalScaleWidth() { mixin(MGBPC!(92, 0x80)()); }
		bool bApplyGlobalScaleWidth(bool val) { mixin(MSBPC!(92, 0x80)()); }
		bool bApplyGlobalScaleTop() { mixin(MGBPC!(92, 0x40)()); }
		bool bApplyGlobalScaleTop(bool val) { mixin(MSBPC!(92, 0x40)()); }
		bool bApplyGlobalScaleLeft() { mixin(MGBPC!(92, 0x20)()); }
		bool bApplyGlobalScaleLeft(bool val) { mixin(MSBPC!(92, 0x20)()); }
		bool bRelativeHeight() { mixin(MGBPC!(92, 0x10)()); }
		bool bRelativeHeight(bool val) { mixin(MSBPC!(92, 0x10)()); }
		bool bRelativeWidth() { mixin(MGBPC!(92, 0x8)()); }
		bool bRelativeWidth(bool val) { mixin(MSBPC!(92, 0x8)()); }
		bool bRelativeTop() { mixin(MGBPC!(92, 0x4)()); }
		bool bRelativeTop(bool val) { mixin(MSBPC!(92, 0x4)()); }
		bool bRelativeLeft() { mixin(MGBPC!(92, 0x2)()); }
		bool bRelativeLeft(bool val) { mixin(MSBPC!(92, 0x2)()); }
		bool bSceneDoesNotRequireInput() { mixin(MGBPC!(92, 0x1)()); }
		bool bSceneDoesNotRequireInput(bool val) { mixin(MSBPC!(92, 0x1)()); }
	}
final:
	static float GetGlobalScaleX()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetGlobalScaleX, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	static float GetGlobalScaleY()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetGlobalScaleY, params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void InitMenuScene(MobilePlayerInput pPlayerInput, int ScreenWidth, int ScreenHeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(MobilePlayerInput*)params.ptr = pPlayerInput;
		*cast(int*)&params[4] = ScreenWidth;
		*cast(int*)&params[8] = ScreenHeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitMenuScene, params.ptr, cast(void*)0);
	}
	void RenderScene(Canvas pCanvas, float RenderDelta)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(float*)&params[4] = RenderDelta;
		(cast(ScriptObject)this).ProcessEvent(Functions.RenderScene, params.ptr, cast(void*)0);
	}
	void OnTouch(MobileMenuObject Sender, float TouchX, float TouchY, bool bCancel)
	{
		ubyte params[16];
		params[] = 0;
		*cast(MobileMenuObject*)params.ptr = Sender;
		*cast(float*)&params[4] = TouchX;
		*cast(float*)&params[8] = TouchY;
		*cast(bool*)&params[12] = bCancel;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnTouch, params.ptr, cast(void*)0);
	}
	bool OnSceneTouch(MobileInputZone.EZoneTouchEvent EventType, float TouchX, float TouchY)
	{
		ubyte params[16];
		params[] = 0;
		*cast(MobileInputZone.EZoneTouchEvent*)params.ptr = EventType;
		*cast(float*)&params[4] = TouchX;
		*cast(float*)&params[8] = TouchY;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnSceneTouch, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void Opened(ScriptString Mode)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Mode;
		(cast(ScriptObject)this).ProcessEvent(Functions.Opened, params.ptr, cast(void*)0);
	}
	void MadeTopMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.MadeTopMenu, cast(void*)0, cast(void*)0);
	}
	bool Closing()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.Closing, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void Closed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Closed, cast(void*)0, cast(void*)0);
	}
	void CleanUpScene()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CleanUpScene, cast(void*)0, cast(void*)0);
	}
	MobileMenuObject FindMenuObject(ScriptString Tag)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Tag;
		(cast(ScriptObject)this).ProcessEvent(Functions.FindMenuObject, params.ptr, cast(void*)0);
		return *cast(MobileMenuObject*)&params[12];
	}
	bool MobileMenuCommand(ScriptString Command)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		(cast(ScriptObject)this).ProcessEvent(Functions.MobileMenuCommand, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
}
