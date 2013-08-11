module UnrealScript.GameFramework.MobileMenuObject;

import ScriptClasses;
import UnrealScript.Engine.Canvas;
import UnrealScript.Core.UObject;
import UnrealScript.GameFramework.MobileMenuScene;
import UnrealScript.GameFramework.MobilePlayerInput;

extern(C++) interface MobileMenuObject : UObject
{
	struct UVCoords
	{
		public @property final auto ref float VL() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __VL[4];
		public @property final auto ref float UL() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __UL[4];
		public @property final auto ref float V() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __V[4];
		public @property final auto ref float U() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __U[4];
		public @property final bool bCustomCoords() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool bCustomCoords(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __bCustomCoords[4];
	}
	public @property final auto ref MobileMenuScene OwnerScene() { return *cast(MobileMenuScene*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref float Opacity() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref MobilePlayerInput InputOwner() { return *cast(MobilePlayerInput*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref ScriptString Tag() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref float YOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref float XOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref float RightLeeway() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref float LeftLeeway() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref float BottomLeeway() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref float TopLeeway() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float AuthoredGlobalScale() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref float Height() { return *cast(float*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref float Width() { return *cast(float*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref float Top() { return *cast(float*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref float Left() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
	public @property final bool bIsHighlighted() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x8000) != 0; }
	public @property final bool bIsHighlighted(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x8000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x8000; } return val; }
	public @property final bool bIsTouched() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x4000) != 0; }
	public @property final bool bIsTouched(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x4000; } return val; }
	public @property final bool bIsHidden() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2000) != 0; }
	public @property final bool bIsHidden(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2000; } return val; }
	public @property final bool bIsActive() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1000) != 0; }
	public @property final bool bIsActive(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1000; } return val; }
	public @property final bool bYOffsetIsActual() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x800) != 0; }
	public @property final bool bYOffsetIsActual(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x800; } return val; }
	public @property final bool bXOffsetIsActual() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x400) != 0; }
	public @property final bool bXOffsetIsActual(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x400; } return val; }
	public @property final bool bHeightRelativeToWidth() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x200) != 0; }
	public @property final bool bHeightRelativeToWidth(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x200; } return val; }
	public @property final bool bApplyGlobalScaleHeight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x100) != 0; }
	public @property final bool bApplyGlobalScaleHeight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x100; } return val; }
	public @property final bool bApplyGlobalScaleWidth() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x80) != 0; }
	public @property final bool bApplyGlobalScaleWidth(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x80; } return val; }
	public @property final bool bApplyGlobalScaleTop() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x40) != 0; }
	public @property final bool bApplyGlobalScaleTop(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x40; } return val; }
	public @property final bool bApplyGlobalScaleLeft() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x20) != 0; }
	public @property final bool bApplyGlobalScaleLeft(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x20; } return val; }
	public @property final bool bRelativeHeight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x10) != 0; }
	public @property final bool bRelativeHeight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x10; } return val; }
	public @property final bool bRelativeWidth() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x8) != 0; }
	public @property final bool bRelativeWidth(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x8; } return val; }
	public @property final bool bRelativeTop() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x4) != 0; }
	public @property final bool bRelativeTop(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x4; } return val; }
	public @property final bool bRelativeLeft() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x2) != 0; }
	public @property final bool bRelativeLeft(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x2; } return val; }
	public @property final bool bHasBeenInitialized() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
	public @property final bool bHasBeenInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
	final void InitMenuObject(MobilePlayerInput PlayerInput, MobileMenuScene Scene, int ScreenWidth, int ScreenHeight)
	{
		ubyte params[16];
		params[] = 0;
		*cast(MobilePlayerInput*)params.ptr = PlayerInput;
		*cast(MobileMenuScene*)&params[4] = Scene;
		*cast(int*)&params[8] = ScreenWidth;
		*cast(int*)&params[12] = ScreenHeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32587], params.ptr, cast(void*)0);
	}
	final void RenderObject(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32604], params.ptr, cast(void*)0);
	}
}
