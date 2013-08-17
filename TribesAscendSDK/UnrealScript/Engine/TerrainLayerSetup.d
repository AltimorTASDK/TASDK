module UnrealScript.Engine.TerrainLayerSetup;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.TerrainMaterial;
import UnrealScript.Core.UObject;

extern(C++) interface TerrainLayerSetup : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.TerrainLayerSetup")()); }
	private static __gshared TerrainLayerSetup mDefaultProperties;
	@property final static TerrainLayerSetup DefaultProperties() { mixin(MGDPC!(TerrainLayerSetup, "TerrainLayerSetup Engine.Default__TerrainLayerSetup")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostBeginPlay;
		public @property static final ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.TerrainLayerSetup.PostBeginPlay")()); }
	}
	struct TerrainFilteredMaterial
	{
		private ubyte __buffer__[84];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.TerrainLayerSetup.TerrainFilteredMaterial")()); }
		@property final
		{
			auto ref
			{
				// WARNING: Property 'Material' has the same name as a defined type!
				float Alpha() { mixin(MGPS!("float", 76)()); }
				TerrainLayerSetup.FilterLimit MaxSlope() { mixin(MGPS!("TerrainLayerSetup.FilterLimit", 60)()); }
				TerrainLayerSetup.FilterLimit MinSlope() { mixin(MGPS!("TerrainLayerSetup.FilterLimit", 44)()); }
				TerrainLayerSetup.FilterLimit MaxHeight() { mixin(MGPS!("TerrainLayerSetup.FilterLimit", 28)()); }
				TerrainLayerSetup.FilterLimit MinHeight() { mixin(MGPS!("TerrainLayerSetup.FilterLimit", 12)()); }
				float NoisePercent() { mixin(MGPS!("float", 8)()); }
				float NoiseScale() { mixin(MGPS!("float", 4)()); }
			}
			bool UseNoise() { mixin(MGBPS!(0, 0x1)()); }
			bool UseNoise(bool val) { mixin(MSBPS!(0, 0x1)()); }
		}
	}
	struct FilterLimit
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.TerrainLayerSetup.FilterLimit")()); }
		@property final
		{
			auto ref
			{
				float NoiseAmount() { mixin(MGPS!("float", 12)()); }
				float NoiseScale() { mixin(MGPS!("float", 8)()); }
				float Base() { mixin(MGPS!("float", 4)()); }
			}
			bool Enabled() { mixin(MGBPS!(0, 0x1)()); }
			bool Enabled(bool val) { mixin(MSBPS!(0, 0x1)()); }
		}
	}
	@property final auto ref ScriptArray!(TerrainLayerSetup.TerrainFilteredMaterial) Materials() { mixin(MGPC!("ScriptArray!(TerrainLayerSetup.TerrainFilteredMaterial)", 60)()); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
}
