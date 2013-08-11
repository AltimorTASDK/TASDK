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
public extern(D):
	@property final auto ref
	{
		UObject.LinearColor CaptionColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 208); }
		ScriptString Caption() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 196); }
		UObject.LinearColor ImageColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 180); }
		MobileMenuObject.UVCoords ImagesUVs() { return *cast(MobileMenuObject.UVCoords*)(cast(size_t)cast(void*)this + 140); }
		Texture2D Images() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 132); }
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32612], params.ptr, cast(void*)0);
	}
	void RenderObject(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32618], params.ptr, cast(void*)0);
	}
	void RenderCaption(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32625], params.ptr, cast(void*)0);
	}
}
