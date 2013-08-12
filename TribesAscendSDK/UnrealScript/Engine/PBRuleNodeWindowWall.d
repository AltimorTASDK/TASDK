module UnrealScript.Engine.PBRuleNodeWindowWall;

import ScriptClasses;
import UnrealScript.Engine.PBRuleNodeBase;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface PBRuleNodeWindowWall : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PBRuleNodeWindowWall")); }
	@property final
	{
		auto ref
		{
			// WARNING: Property 'Material' has the same name as a defined type!
			float YOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 132); }
			float WindowPosZ() { return *cast(float*)(cast(size_t)cast(void*)this + 124); }
			float WindowPosX() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
			float WindowSizeZ() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
			float WindowSizeX() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
			float CellMaxSizeZ() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			float CellMaxSizeX() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
		}
		bool bScaleWindowWithCell() { return (*cast(uint*)(cast(size_t)cast(void*)this + 128) & 0x1) != 0; }
		bool bScaleWindowWithCell(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 128) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 128) &= ~0x1; } return val; }
	}
}
