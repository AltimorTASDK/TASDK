module UnrealScript.GameFramework.MobileMenuButton;

import ScriptClasses;
import UnrealScript.Engine.Canvas;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.GameFramework.MobilePlayerInput;
import UnrealScript.GameFramework.MobileMenuScene;
import UnrealScript.GameFramework.MobileMenuObject;

extern(C++) interface MobileMenuButton : MobileMenuObject
{
	public @property final auto ref UObject.LinearColor CaptionColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 208); }
	public @property final auto ref ScriptString Caption() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 196); }
	public @property final auto ref UObject.LinearColor ImageColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 180); }
	public @property final auto ref MobileMenuObject.UVCoords ImagesUVs() { return *cast(MobileMenuObject.UVCoords*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref Texture2D Images() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 132); }
	final void InitMenuObject(MobilePlayerInput PlayerInput, MobileMenuScene Scene, int ScreenWidth, int ScreenHeight)
	{
		ubyte params[16];
		params[] = 0;
		*cast(MobilePlayerInput*)params.ptr = PlayerInput;
		*cast(MobileMenuScene*)&params[4] = Scene;
		*cast(int*)&params[8] = ScreenWidth;
		*cast(int*)&params[12] = ScreenHeight;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32612], params.ptr, cast(void*)0);
	}
	final void RenderObject(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32618], params.ptr, cast(void*)0);
	}
	final void RenderCaption(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32625], params.ptr, cast(void*)0);
	}
}
