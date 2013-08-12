module UnrealScript.Engine.PBRuleNodeComment;

import ScriptClasses;
import UnrealScript.Engine.PBRuleNodeBase;
import UnrealScript.Core.UObject;

extern(C++) interface PBRuleNodeComment : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PBRuleNodeComment")); }
	private static __gshared PBRuleNodeComment mDefaultProperties;
	@property final static PBRuleNodeComment DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(PBRuleNodeComment)("PBRuleNodeComment Engine.Default__PBRuleNodeComment")); }
	@property final
	{
		auto ref
		{
			UObject.Color FillColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 124); }
			UObject.Color BorderColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 116); }
			int BorderWidth() { return *cast(int*)(cast(size_t)cast(void*)this + 112); }
			int SizeY() { return *cast(int*)(cast(size_t)cast(void*)this + 108); }
			int SizeX() { return *cast(int*)(cast(size_t)cast(void*)this + 104); }
		}
		bool bFilled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 120) & 0x1) != 0; }
		bool bFilled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 120) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 120) &= ~0x1; } return val; }
	}
}
