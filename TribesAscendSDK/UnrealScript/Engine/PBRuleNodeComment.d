module UnrealScript.Engine.PBRuleNodeComment;

import UnrealScript.Engine.PBRuleNodeBase;
import UnrealScript.Core.UObject;

extern(C++) interface PBRuleNodeComment : PBRuleNodeBase
{
	public @property final auto ref UObject.Color FillColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 124); }
	public @property final bool bFilled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x1) != 0; }
	public @property final bool bFilled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x1; } return val; }
	public @property final auto ref UObject.Color BorderColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref int BorderWidth() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref int SizeY() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref int SizeX() { return *cast(int*)(cast(size_t)cast(void*)this + 104); }
}
