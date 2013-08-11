module UnrealScript.GameFramework.MobileMenuImage;

import ScriptClasses;
import UnrealScript.Engine.Canvas;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.GameFramework.MobileMenuObject;

extern(C++) interface MobileMenuImage : MobileMenuObject
{
	enum MenuImageDrawStyle : ubyte
	{
		IDS_Normal = 0,
		IDS_Stretched = 1,
		IDS_Tile = 2,
		IDS_MAX = 3,
	}
	public @property final auto ref UObject.LinearColor ImageColor() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref MobileMenuObject.UVCoords ImageUVs() { return *cast(MobileMenuObject.UVCoords*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref MobileMenuImage.MenuImageDrawStyle ImageDrawStyle() { return *cast(MobileMenuImage.MenuImageDrawStyle*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref Texture2D Image() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 132); }
	final void RenderObject(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32650], params.ptr, cast(void*)0);
	}
}
