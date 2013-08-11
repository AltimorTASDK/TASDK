module UnrealScript.Engine.SequenceFrame;

import UnrealScript.Engine.SequenceObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Material;

extern(C++) interface SequenceFrame : SequenceObject
{
	public @property final auto ref Material FillMaterial() { return *cast(Material*)(cast(size_t)cast(void*)this + 168); }
	public @property final auto ref Texture2D FillTexture() { return *cast(Texture2D*)(cast(size_t)cast(void*)this + 164); }
	public @property final auto ref UObject.Color FillColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref UObject.Color BorderColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 156); }
	public @property final bool bTileFill() { return (*cast(uint*)(cast(size_t)cast(void*)this + 152) & 0x4) != 0; }
	public @property final bool bTileFill(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 152) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 152) &= ~0x4; } return val; }
	public @property final bool bFilled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 152) & 0x2) != 0; }
	public @property final bool bFilled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 152) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 152) &= ~0x2; } return val; }
	public @property final bool bDrawBox() { return (*cast(uint*)(cast(size_t)cast(void*)this + 152) & 0x1) != 0; }
	public @property final bool bDrawBox(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 152) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 152) &= ~0x1; } return val; }
	public @property final auto ref int BorderWidth() { return *cast(int*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref int SizeY() { return *cast(int*)(cast(size_t)cast(void*)this + 144); }
	public @property final auto ref int SizeX() { return *cast(int*)(cast(size_t)cast(void*)this + 140); }
}
