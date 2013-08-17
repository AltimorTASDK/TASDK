module UnrealScript.GameFramework.MobileMenuObject;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Canvas;
import UnrealScript.Core.UObject;
import UnrealScript.GameFramework.MobileMenuScene;
import UnrealScript.GameFramework.MobilePlayerInput;

extern(C++) interface MobileMenuObject : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.MobileMenuObject")()); }
	private static __gshared MobileMenuObject mDefaultProperties;
	@property final static MobileMenuObject DefaultProperties() { mixin(MGDPC!(MobileMenuObject, "MobileMenuObject GameFramework.Default__MobileMenuObject")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitMenuObject;
			ScriptFunction mRenderObject;
		}
		public @property static final
		{
			ScriptFunction InitMenuObject() { mixin(MGF!("mInitMenuObject", "Function GameFramework.MobileMenuObject.InitMenuObject")()); }
			ScriptFunction RenderObject() { mixin(MGF!("mRenderObject", "Function GameFramework.MobileMenuObject.RenderObject")()); }
		}
	}
	struct UVCoords
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct GameFramework.MobileMenuObject.UVCoords")()); }
		@property final
		{
			auto ref
			{
				float VL() { mixin(MGPS!(float, 16)()); }
				float UL() { mixin(MGPS!(float, 12)()); }
				float V() { mixin(MGPS!(float, 8)()); }
				float U() { mixin(MGPS!(float, 4)()); }
			}
			bool bCustomCoords() { mixin(MGBPS!(0, 0x1)()); }
			bool bCustomCoords(bool val) { mixin(MSBPS!(0, 0x1)()); }
		}
	}
	@property final
	{
		auto ref
		{
			MobileMenuScene OwnerScene() { mixin(MGPC!(MobileMenuScene, 128)()); }
			float Opacity() { mixin(MGPC!(float, 124)()); }
			MobilePlayerInput InputOwner() { mixin(MGPC!(MobilePlayerInput, 120)()); }
			ScriptString Tag() { mixin(MGPC!(ScriptString, 108)()); }
			float YOffset() { mixin(MGPC!(float, 104)()); }
			float XOffset() { mixin(MGPC!(float, 100)()); }
			float RightLeeway() { mixin(MGPC!(float, 96)()); }
			float LeftLeeway() { mixin(MGPC!(float, 92)()); }
			float BottomLeeway() { mixin(MGPC!(float, 88)()); }
			float TopLeeway() { mixin(MGPC!(float, 84)()); }
			float AuthoredGlobalScale() { mixin(MGPC!(float, 80)()); }
			float Height() { mixin(MGPC!(float, 76)()); }
			float Width() { mixin(MGPC!(float, 72)()); }
			float Top() { mixin(MGPC!(float, 68)()); }
			float Left() { mixin(MGPC!(float, 64)()); }
		}
		bool bIsHighlighted() { mixin(MGBPC!(60, 0x8000)()); }
		bool bIsHighlighted(bool val) { mixin(MSBPC!(60, 0x8000)()); }
		bool bIsTouched() { mixin(MGBPC!(60, 0x4000)()); }
		bool bIsTouched(bool val) { mixin(MSBPC!(60, 0x4000)()); }
		bool bIsHidden() { mixin(MGBPC!(60, 0x2000)()); }
		bool bIsHidden(bool val) { mixin(MSBPC!(60, 0x2000)()); }
		bool bIsActive() { mixin(MGBPC!(60, 0x1000)()); }
		bool bIsActive(bool val) { mixin(MSBPC!(60, 0x1000)()); }
		bool bYOffsetIsActual() { mixin(MGBPC!(60, 0x800)()); }
		bool bYOffsetIsActual(bool val) { mixin(MSBPC!(60, 0x800)()); }
		bool bXOffsetIsActual() { mixin(MGBPC!(60, 0x400)()); }
		bool bXOffsetIsActual(bool val) { mixin(MSBPC!(60, 0x400)()); }
		bool bHeightRelativeToWidth() { mixin(MGBPC!(60, 0x200)()); }
		bool bHeightRelativeToWidth(bool val) { mixin(MSBPC!(60, 0x200)()); }
		bool bApplyGlobalScaleHeight() { mixin(MGBPC!(60, 0x100)()); }
		bool bApplyGlobalScaleHeight(bool val) { mixin(MSBPC!(60, 0x100)()); }
		bool bApplyGlobalScaleWidth() { mixin(MGBPC!(60, 0x80)()); }
		bool bApplyGlobalScaleWidth(bool val) { mixin(MSBPC!(60, 0x80)()); }
		bool bApplyGlobalScaleTop() { mixin(MGBPC!(60, 0x40)()); }
		bool bApplyGlobalScaleTop(bool val) { mixin(MSBPC!(60, 0x40)()); }
		bool bApplyGlobalScaleLeft() { mixin(MGBPC!(60, 0x20)()); }
		bool bApplyGlobalScaleLeft(bool val) { mixin(MSBPC!(60, 0x20)()); }
		bool bRelativeHeight() { mixin(MGBPC!(60, 0x10)()); }
		bool bRelativeHeight(bool val) { mixin(MSBPC!(60, 0x10)()); }
		bool bRelativeWidth() { mixin(MGBPC!(60, 0x8)()); }
		bool bRelativeWidth(bool val) { mixin(MSBPC!(60, 0x8)()); }
		bool bRelativeTop() { mixin(MGBPC!(60, 0x4)()); }
		bool bRelativeTop(bool val) { mixin(MSBPC!(60, 0x4)()); }
		bool bRelativeLeft() { mixin(MGBPC!(60, 0x2)()); }
		bool bRelativeLeft(bool val) { mixin(MSBPC!(60, 0x2)()); }
		bool bHasBeenInitialized() { mixin(MGBPC!(60, 0x1)()); }
		bool bHasBeenInitialized(bool val) { mixin(MSBPC!(60, 0x1)()); }
	}
final:
	void InitMenuObject(MobilePlayerInput pPlayerInput, MobileMenuScene pScene, int ScreenWidth, int ScreenHeight)
	{
		ubyte params[16];
		params[] = 0;
		*cast(MobilePlayerInput*)params.ptr = pPlayerInput;
		*cast(MobileMenuScene*)&params[4] = pScene;
		*cast(int*)&params[8] = ScreenWidth;
		*cast(int*)&params[12] = ScreenHeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitMenuObject, params.ptr, cast(void*)0);
	}
	void RenderObject(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(Functions.RenderObject, params.ptr, cast(void*)0);
	}
}
