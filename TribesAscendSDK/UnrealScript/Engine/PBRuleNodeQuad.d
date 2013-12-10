module UnrealScript.Engine.PBRuleNodeQuad;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PBRuleNodeBase;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface PBRuleNodeQuad : PBRuleNodeBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PBRuleNodeQuad")); }
	private static __gshared PBRuleNodeQuad mDefaultProperties;
	@property final static PBRuleNodeQuad DefaultProperties() { mixin(MGDPC("PBRuleNodeQuad", "PBRuleNodeQuad Engine.Default__PBRuleNodeQuad")); }
	@property final
	{
		auto ref
		{
			float YOffset() { mixin(MGPC("float", 120)); }
			int QuadLightmapRes() { mixin(MGPC("int", 116)); }
			float RepeatMaxSizeZ() { mixin(MGPC("float", 112)); }
			float RepeatMaxSizeX() { mixin(MGPC("float", 108)); }
			MaterialInterface MaterialVar() { mixin(MGPC("MaterialInterface", 104)); }
		}
		bool bDisableMaterialRepeat() { mixin(MGBPC(124, 0x1)); }
		bool bDisableMaterialRepeat(bool val) { mixin(MSBPC(124, 0x1)); }
	}
}
