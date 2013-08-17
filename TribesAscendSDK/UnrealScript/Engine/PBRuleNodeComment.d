module UnrealScript.Engine.PBRuleNodeComment;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PBRuleNodeBase;
import UnrealScript.Core.UObject;

extern(C++) interface PBRuleNodeComment : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PBRuleNodeComment")); }
	private static __gshared PBRuleNodeComment mDefaultProperties;
	@property final static PBRuleNodeComment DefaultProperties() { mixin(MGDPC("PBRuleNodeComment", "PBRuleNodeComment Engine.Default__PBRuleNodeComment")); }
	@property final
	{
		auto ref
		{
			UObject.Color FillColor() { mixin(MGPC("UObject.Color", 124)); }
			UObject.Color BorderColor() { mixin(MGPC("UObject.Color", 116)); }
			int BorderWidth() { mixin(MGPC("int", 112)); }
			int SizeY() { mixin(MGPC("int", 108)); }
			int SizeX() { mixin(MGPC("int", 104)); }
		}
		bool bFilled() { mixin(MGBPC(120, 0x1)); }
		bool bFilled(bool val) { mixin(MSBPC(120, 0x1)); }
	}
}
