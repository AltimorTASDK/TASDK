module UnrealScript.GameFramework.MobileMenuLabel;

import ScriptClasses;
import UnrealScript.Engine.Canvas;
import UnrealScript.Core.UObject;
import UnrealScript.GameFramework.MobileMenuObject;
import UnrealScript.Engine.Font;

extern(C++) interface MobileMenuLabel : MobileMenuObject
{
public extern(D):
	@property final
	{
		auto ref
		{
			float TextYScale() { return *cast(float*)(cast(size_t)cast(void*)this + 160); }
			float TextXScale() { return *cast(float*)(cast(size_t)cast(void*)this + 156); }
			UObject.Color TouchedColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 152); }
			UObject.Color TextColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 148); }
			Font TextFont() { return *cast(Font*)(cast(size_t)cast(void*)this + 144); }
			ScriptString Caption() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 132); }
		}
		bool bAutoSize() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x1) != 0; }
		bool bAutoSize(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x1; } return val; }
	}
	final void RenderObject(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[32667], params.ptr, cast(void*)0);
	}
}
