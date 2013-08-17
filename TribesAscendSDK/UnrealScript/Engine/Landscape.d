module UnrealScript.Engine.Landscape;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Info;
import UnrealScript.Engine.EngineTypes;
import UnrealScript.Engine.Material;

extern(C++) interface Landscape : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Landscape")); }
	private static __gshared Landscape mDefaultProperties;
	@property final static Landscape DefaultProperties() { mixin(MGDPC("Landscape", "Landscape Engine.Default__Landscape")); }
	struct LandscapeLayerInfo
	{
		private ubyte __buffer__[20];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Landscape.LandscapeLayerInfo")); }
		@property final
		{
			auto ref
			{
				MaterialInstanceConstant ThumbnailMIC() { mixin(MGPS("MaterialInstanceConstant", 16)); }
				float Hardness() { mixin(MGPS("float", 8)); }
				ScriptName LayerName() { mixin(MGPS("ScriptName", 0)); }
			}
			bool bNoWeightBlend() { mixin(MGBPS(12, 0x1)); }
			bool bNoWeightBlend(bool val) { mixin(MSBPS(12, 0x1)); }
		}
	}
	struct LandscapeWeightmapUsage
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.Landscape.LandscapeWeightmapUsage")); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'ChannelUsage'!
	}
	@property final auto ref
	{
		ScriptArray!(ScriptName) LayerNames() { mixin(MGPC("ScriptArray!(ScriptName)", 484)); }
		ScriptArray!(Landscape.LandscapeLayerInfo) LayerInfos() { mixin(MGPC("ScriptArray!(Landscape.LandscapeLayerInfo)", 496)); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) LandscapeComponents() { mixin(MGPC("ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)", 604)); }
		ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*) CollisionComponents() { mixin(MGPC("ScriptArray!(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void*)", 616)); }
		int NumSubsections() { mixin(MGPC("int", 820)); }
		int SubsectionSizeQuads() { mixin(MGPC("int", 816)); }
		int ComponentSizeQuads() { mixin(MGPC("int", 812)); }
		UObject.Pointer DataInterface() { mixin(MGPC("UObject.Pointer", 808)); }
		// ERROR: Unsupported object class 'MapProperty' for the property named 'WeightmapUsageMap'!
		// ERROR: Unsupported object class 'MapProperty' for the property named 'XYtoCollisionComponentMap'!
		// ERROR: Unsupported object class 'MapProperty' for the property named 'XYtoComponentMap'!
		float StreamingDistanceMultiplier() { mixin(MGPC("float", 600)); }
		int StaticLightingResolution() { mixin(MGPC("int", 596)); }
		EngineTypes.LightmassPrimitiveSettings LightmassSettings() { mixin(MGPC("EngineTypes.LightmassPrimitiveSettings", 568)); }
		// ERROR: Unsupported object class 'MapProperty' for the property named 'MaterialInstanceConstantMap'!
		int MaxLODLevel() { mixin(MGPC("int", 480)); }
		Material LandscapeMaterial() { mixin(MGPC("Material", 476)); }
	}
}
