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
public extern(D):
	enum EProcBuildingAxis : ubyte
	{
		EPBAxis_X = 0,
		EPBAxis_Z = 1,
		EPBAxis_MAX = 2,
	}
	struct PBParamSwatch
	{
		private ubyte __buffer__[20];
	public extern(D):
		@property final auto ref
		{
			ScriptName SwatchName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			ScriptArray!(ProcBuilding.PBMaterialParam) Params() { return *cast(ScriptArray!(ProcBuilding.PBMaterialParam)*)(cast(size_t)&this + 8); }
		}
	}
	struct PBVariationInfo
	{
		private ubyte __buffer__[12];
	public extern(D):
		@property final
		{
			@property final auto ref ScriptName VariationName() { return *cast(ScriptName*)(cast(size_t)&this + 0); }
			bool bMeshOnTopOfFacePoly() { return (*cast(uint*)(cast(size_t)&this + 8) & 0x1) != 0; }
			bool bMeshOnTopOfFacePoly(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 8) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 8) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			PBRuleNodeBase RootRule() { return *cast(PBRuleNodeBase*)(cast(size_t)cast(void*)this + 60); }
			MaterialInterface DefaultRoofMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 68); }
			MaterialInterface DefaultFloorMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 72); }
			MaterialInterface DefaultNonRectWallMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 76); }
			float RoofZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 80); }
			float NotRoofZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 84); }
			float FloorZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 88); }
			float NotFloorZOffset() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
			float RoofPolyInset() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
			float FloorPolyInset() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
			float BuildingLODSpecular() { return *cast(float*)(cast(size_t)cast(void*)this + 104); }
			float RoofEdgeScopeRaise() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			Texture LODCubemap() { return *cast(Texture*)(cast(size_t)cast(void*)this + 112); }
			Texture InteriorTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 116); }
			ScriptArray!(ProcBuildingRuleset.PBVariationInfo) Variations() { return *cast(ScriptArray!(ProcBuildingRuleset.PBVariationInfo)*)(cast(size_t)cast(void*)this + 120); }
			ScriptArray!(ProcBuildingRuleset.PBParamSwatch) ParamSwatches() { return *cast(ScriptArray!(ProcBuildingRuleset.PBParamSwatch)*)(cast(size_t)cast(void*)this + 132); }
			ScriptArray!(PBRuleNodeComment) Comments() { return *cast(ScriptArray!(PBRuleNodeComment)*)(cast(size_t)cast(void*)this + 144); }
		}
		bool bBeingEdited() { return (*cast(uint*)(cast(size_t)cast(void*)this + 64) & 0x1) != 0; }
		bool bBeingEdited(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 64) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 64) &= ~0x1; } return val; }
		bool bEnableInteriorTexture() { return (*cast(uint*)(cast(size_t)cast(void*)this + 64) & 0x2) != 0; }
		bool bEnableInteriorTexture(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 64) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 64) &= ~0x2; } return val; }
		bool bLODOnlyRoof() { return (*cast(uint*)(cast(size_t)cast(void*)this + 64) & 0x4) != 0; }
		bool bLODOnlyRoof(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 64) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 64) &= ~0x4; } return val; }
		bool bPickRandomSwatch() { return (*cast(uint*)(cast(size_t)cast(void*)this + 64) & 0x8) != 0; }
		bool bPickRandomSwatch(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 64) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 64) &= ~0x8; } return val; }
	}
}
