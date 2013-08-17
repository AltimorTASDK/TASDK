module UnrealScript.Engine.PBRuleNodeWindowWall;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PBRuleNodeBase;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface PBRuleNodeWindowWall : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PBRuleNodeWindowWall")); }
	private static __gshared PBRuleNodeWindowWall mDefaultProperties;
	@property final static PBRuleNodeWindowWall DefaultProperties() { mixin(MGDPC("PBRuleNodeWindowWall", "PBRuleNodeWindowWall Engine.Default__PBRuleNodeWindowWall")); }
	@property final
	{
		auto ref
		{
			// WARNING: Property 'Material' has the same name as a defined type!
			float YOffset() { mixin(MGPC("float", 132)); }
			float WindowPosZ() { mixin(MGPC("float", 124)); }
			float WindowPosX() { mixin(MGPC("float", 120)); }
			float WindowSizeZ() { mixin(MGPC("float", 116)); }
			float WindowSizeX() { mixin(MGPC("float", 112)); }
			float CellMaxSizeZ() { mixin(MGPC("float", 108)); }
			float CellMaxSizeX() { mixin(MGPC("float", 104)); }
		}
		bool bScaleWindowWithCell() { mixin(MGBPC(128, 0x1)); }
		bool bScaleWindowWithCell(bool val) { mixin(MSBPC(128, 0x1)); }
	}
}
