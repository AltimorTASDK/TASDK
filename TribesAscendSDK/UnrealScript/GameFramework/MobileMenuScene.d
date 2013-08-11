module UnrealScript.GameFramework.MobileMenuScene;

import ScriptClasses;
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
	@property final
	{
		auto ref
		{
			float Width() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
			float Height() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			float Left() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
			float Top() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
			float Opacity() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
			Font SceneCaptionFont() { return *cast(Font*)(cast(size_t)cast(void*)this + 84); }
			ScriptArray!(MobileMenuObject) MenuObjects() { return *cast(ScriptArray!(MobileMenuObject)*)(cast(size_t)cast(void*)this + 72); }
			SoundCue UIUnTouchSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 124); }
			SoundCue UITouchSound() { return *cast(SoundCue*)(cast(size_t)cast(void*)this + 120); }
			float AuthoredGlobalScale() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
			MobilePlayerInput InputOwner() { return *cast(MobilePlayerInput*)(cast(size_t)cast(void*)this + 88); }
			ScriptString MenuName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 60); }
		}
		bool bApplyGlobalScaleHeight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 92) & 0x100) != 0; }
		bool bApplyGlobalScaleHeight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 92) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 92) &= ~0x100; } return val; }
		bool bApplyGlobalScaleWidth() { return (*cast(uint*)(cast(size_t)cast(void*)this + 92) & 0x80) != 0; }
		bool bApplyGlobalScaleWidth(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 92) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 92) &= ~0x80; } return val; }
		bool bApplyGlobalScaleTop() { return (*cast(uint*)(cast(size_t)cast(void*)this + 92) & 0x40) != 0; }
		bool bApplyGlobalScaleTop(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 92) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 92) &= ~0x40; } return val; }
		bool bApplyGlobalScaleLeft() { return (*cast(uint*)(cast(size_t)cast(void*)this + 92) & 0x20) != 0; }
		bool bApplyGlobalScaleLeft(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 92) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 92) &= ~0x20; } return val; }
		bool bRelativeHeight() { return (*cast(uint*)(cast(size_t)cast(void*)this + 92) & 0x10) != 0; }
		bool bRelativeHeight(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 92) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 92) &= ~0x10; } return val; }
		bool bRelativeWidth() { return (*cast(uint*)(cast(size_t)cast(void*)this + 92) & 0x8) != 0; }
		bool bRelativeWidth(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 92) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 92) &= ~0x8; } return val; }
		bool bRelativeTop() { return (*cast(uint*)(cast(size_t)cast(void*)this + 92) & 0x4) != 0; }
		bool bRelativeTop(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 92) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 92) &= ~0x4; } return val; }
		bool bRelativeLeft() { return (*cast(uint*)(cast(size_t)cast(void*)this + 92) & 0x2) != 0; }
		bool bRelativeLeft(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 92) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 92) &= ~0x2; } return val; }
		bool bSceneDoesNotRequireInput() { return (*cast(uint*)(cast(size_t)cast(void*)this + 92) & 0x1) != 0; }
		bool bSceneDoesNotRequireInput(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 92) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 92) &= ~0x1; } return val; }
	}
final:
	float GetGlobalScaleX()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32600], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	float GetGlobalScaleY()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32602], params.ptr, cast(void*)0);
		return *cast(float*)params.ptr;
	}
	void InitMenuScene(MobilePlayerInput pPlayerInput, int ScreenWidth, int ScreenHeight)
	{
		ubyte params[12];
		params[] = 0;
		*cast(MobilePlayerInput*)params.ptr = pPlayerInput;
		*cast(int*)&params[4] = ScreenWidth;
		*cast(int*)&params[8] = ScreenHeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32692], params.ptr, cast(void*)0);
	}
	void RenderScene(Canvas pCanvas, float RenderDelta)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		*cast(float*)&params[4] = RenderDelta;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32701], params.ptr, cast(void*)0);
	}
	void OnTouch(MobileMenuObject Sender, float TouchX, float TouchY, bool bCancel)
	{
		ubyte params[16];
		params[] = 0;
		*cast(MobileMenuObject*)params.ptr = Sender;
		*cast(float*)&params[4] = TouchX;
		*cast(float*)&params[8] = TouchY;
		*cast(bool*)&params[12] = bCancel;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32705], params.ptr, cast(void*)0);
	}
	bool OnSceneTouch(MobileInputZone.EZoneTouchEvent EventType, float TouchX, float TouchY)
	{
		ubyte params[16];
		params[] = 0;
		*cast(MobileInputZone.EZoneTouchEvent*)params.ptr = EventType;
		*cast(float*)&params[4] = TouchX;
		*cast(float*)&params[8] = TouchY;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32710], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	void Opened(ScriptString Mode)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Mode;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32715], params.ptr, cast(void*)0);
	}
	void MadeTopMenu()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32717], cast(void*)0, cast(void*)0);
	}
	bool Closing()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32718], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void Closed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32720], cast(void*)0, cast(void*)0);
	}
	void CleanUpScene()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32721], cast(void*)0, cast(void*)0);
	}
	MobileMenuObject FindMenuObject(ScriptString Tag)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Tag;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32722], params.ptr, cast(void*)0);
		return *cast(MobileMenuObject*)&params[12];
	}
	bool MobileMenuCommand(ScriptString Command)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Command;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32726], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
}
