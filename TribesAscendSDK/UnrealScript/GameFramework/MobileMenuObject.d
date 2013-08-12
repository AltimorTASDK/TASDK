module UnrealScript.GameFramework.MobileMenuObject;

import ScriptClasses;
import UnrealScript.Engine.Canvas;
import UnrealScript.Core.UObject;
import UnrealScript.GameFramework.MobileMenuScene;
import UnrealScript.GameFramework.MobilePlayerInput;

extern(C++) interface MobileMenuObject : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.MobileMenuObject")); }
	private static __gshared MobileMenuObject mDefaultProperties;
	@property final static MobileMenuObject DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(MobileMenuObject)("MobileMenuObject GameFramework.Default__MobileMenuObject")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitMenuObject;
			ScriptFunction mRenderObject;
		}
		public @property static final
		{
			ScriptFunction InitMenuObject() { return mInitMenuObject ? mInitMenuObject : (mInitMenuObject = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileMenuObject.InitMenuObject")); }
			ScriptFunction RenderObject() { return mRenderObject ? mRenderObject : (mRenderObject = ScriptObject.Find!(ScriptFunction)("Function GameFramework.MobileMenuObject.RenderObject")); }
		}
	}
	struct UVCoords
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct GameFramework.MobileMenuObject.UVCoords")); }
		@property final
		{
			auto ref
			{
				float VL() { return *cast(float*)(cast(size_t)&this + 16); }
				float UL() { return *cast(float*)(cast(size_t)&this + 12); }
				float V() { return *cast(float*)(cast(size_t)&this + 8); }
				float U() { return *cast(float*)(cast(size_t)&this + 4); }
			}
			bool bCustomCoords() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bCustomCoords(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			MobileMenuScene OwnerScene() { return *cast(MobileMenuScene*)(cast(size_t)cast(void*)this + 128); }
			float Opacity() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
			MobilePlayerInput InputOwner() { return *cast(MobilePlayerInput*)(cast(size_t)cast(void*)this + 120); }
			ScriptString Tag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 108); }
			float YOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
			float XOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
			float RightLeeway() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
			float LeftLeeway() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
			float BottomLeeway() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
			float TopLeeway() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
			float AuthoredGlobalScale() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
			float Height() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
			float Width() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
			float Top() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
			float Left() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
		}
		bool bIsHighlighted() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x8000) != 0; }
		bool bIsHighlighted(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x8000; } return val; }
		bool bIsTouched() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x4000) != 0; }
		bool bIsTouched(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x4000; } return val; }
		bool bIsHidden() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2000) != 0; }
		bool bIsHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2000; } return val; }
		bool bIsActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1000) != 0; }
		bool bIsActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1000; } return val; }
		bool bYOffsetIsActual() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x800) != 0; }
		bool bYOffsetIsActual(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x800; } return val; }
		bool bXOffsetIsActual() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x400) != 0; }
		bool bXOffsetIsActual(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x400; } return val; }
		bool bHeightRelativeToWidth() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x200) != 0; }
		bool bHeightRelativeToWidth(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x200; } return val; }
		bool bApplyGlobalScaleHeight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x100) != 0; }
		bool bApplyGlobalScaleHeight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x100; } return val; }
		bool bApplyGlobalScaleWidth() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x80) != 0; }
		bool bApplyGlobalScaleWidth(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x80; } return val; }
		bool bApplyGlobalScaleTop() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x40) != 0; }
		bool bApplyGlobalScaleTop(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x40; } return val; }
		bool bApplyGlobalScaleLeft() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x20) != 0; }
		bool bApplyGlobalScaleLeft(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x20; } return val; }
		bool bRelativeHeight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x10) != 0; }
		bool bRelativeHeight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x10; } return val; }
		bool bRelativeWidth() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x8) != 0; }
		bool bRelativeWidth(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x8; } return val; }
		bool bRelativeTop() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x4) != 0; }
		bool bRelativeTop(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x4; } return val; }
		bool bRelativeLeft() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2) != 0; }
		bool bRelativeLeft(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2; } return val; }
		bool bHasBeenInitialized() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
		bool bHasBeenInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
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
