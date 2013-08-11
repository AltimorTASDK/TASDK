module UnrealScript.Engine.ProcBuildingRuleset;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PBRuleNodeBase;
import UnrealScript.Engine.ProcBuilding;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.Texture;
import UnrealScript.Engine.PBRuleNodeComment;

extern(C++) interface ProcBuildingRuleset : UObject
{
	enum EProcBuildingAxis : ubyte
	{
		EPBAxis_X = 0,
		EPBAxis_Z = 1,
		EPBAxis_MAX = 2,
	}
	struct PBParamSwatch
	{
		public @property final auto ref ScriptName SwatchName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __SwatchName[8];
		public @property final auto ref ScriptArray!(ProcBuilding.PBMaterialParam) Params() { return *cast(ScriptArray!(ProcBuilding.PBMaterialParam)*)(cast(size_t)&this + 8); }
		private ubyte __Params[12];
	}
	struct PBVariationInfo
	{
		public @property final auto ref ScriptName VariationName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
		private ubyte __VariationName[8];
		public @property final bool bMeshOnTopOfFacePoly() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x1) != 0; }
		public @property final bool bMeshOnTopOfFacePoly(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x1; } return val; }
		private ubyte __bMeshOnTopOfFacePoly[4];
	}
	public @property final auto ref PBRuleNodeBase RootRule() { return *cast(PBRuleNodeBase*)(cast(size_t)cast(void*)this + 60); }
	public @property final bool bBeingEdited() { return (*cast(uint*)(cast(size_t)cast(void*)this + 64) & 0x1) != 0; }
	public @property final bool bBeingEdited(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 64) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 64) &= ~0x1; } return val; }
	public @property final bool bEnableInteriorTexture() { return (*cast(uint*)(cast(size_t)cast(void*)this + 64) & 0x2) != 0; }
	public @property final bool bEnableInteriorTexture(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 64) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 64) &= ~0x2; } return val; }
	public @property final bool bLODOnlyRoof() { return (*cast(uint*)(cast(size_t)cast(void*)this + 64) & 0x4) != 0; }
	public @property final bool bLODOnlyRoof(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 64) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 64) &= ~0x4; } return val; }
	public @property final bool bPickRandomSwatch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 64) & 0x8) != 0; }
	public @property final bool bPickRandomSwatch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 64) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 64) &= ~0x8; } return val; }
	public @property final auto ref MaterialInterface DefaultRoofMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 68); }
	public @property final auto ref MaterialInterface DefaultFloorMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref MaterialInterface DefaultNonRectWallMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref float RoofZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
	public @property final auto ref float NotRoofZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
	public @property final auto ref float FloorZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref float NotFloorZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref float RoofPolyInset() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref float FloorPolyInset() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref float BuildingLODSpecular() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref float RoofEdgeScopeRaise() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
	public @property final auto ref Texture LODCubemap() { return *cast(Texture*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref Texture InteriorTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 116); }
	public @property final auto ref ScriptArray!(ProcBuildingRuleset.PBVariationInfo) Variations() { return *cast(ScriptArray!(ProcBuildingRuleset.PBVariationInfo)*)(cast(size_t)cast(void*)this + 120); }
	public @property final auto ref ScriptArray!(ProcBuildingRuleset.PBParamSwatch) ParamSwatches() { return *cast(ScriptArray!(ProcBuildingRuleset.PBParamSwatch)*)(cast(size_t)cast(void*)this + 132); }
	public @property final auto ref ScriptArray!(PBRuleNodeComment) Comments() { return *cast(ScriptArray!(PBRuleNodeComment)*)(cast(size_t)cast(void*)this + 144); }
}
