module UnrealScript.Engine.TerrainLayerSetup;

import ScriptClasses;
import UnrealScript.Engine.TerrainMaterial;
import UnrealScript.Core.UObject;

extern(C++) interface TerrainLayerSetup : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.TerrainLayerSetup")); }
	private static __gshared TerrainLayerSetup mDefaultProperties;
	@property final static TerrainLayerSetup DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TerrainLayerSetup)("TerrainLayerSetup Engine.Default__TerrainLayerSetup")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostBeginPlay;
		public @property static final ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function Engine.TerrainLayerSetup.PostBeginPlay")); }
	}
	struct TerrainFilteredMaterial
	{
		private ubyte __buffer__[84];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.TerrainLayerSetup.TerrainFilteredMaterial")); }
		@property final
		{
			auto ref
			{
				// WARNING: Property 'Material' has the same name as a defined type!
				float Alpha() { return *cast(float*)(cast(size_t)&this + 76); }
				TerrainLayerSetup.FilterLimit MaxSlope() { return *cast(TerrainLayerSetup.FilterLimit*)(cast(size_t)&this + 60); }
				TerrainLayerSetup.FilterLimit MinSlope() { return *cast(TerrainLayerSetup.FilterLimit*)(cast(size_t)&this + 44); }
				TerrainLayerSetup.FilterLimit MaxHeight() { return *cast(TerrainLayerSetup.FilterLimit*)(cast(size_t)&this + 28); }
				TerrainLayerSetup.FilterLimit MinHeight() { return *cast(TerrainLayerSetup.FilterLimit*)(cast(size_t)&this + 12); }
				float NoisePercent() { return *cast(float*)(cast(size_t)&this + 8); }
				float NoiseScale() { return *cast(float*)(cast(size_t)&this + 4); }
			}
			bool UseNoise() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool UseNoise(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	struct FilterLimit
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.TerrainLayerSetup.FilterLimit")); }
		@property final
		{
			auto ref
			{
				float NoiseAmount() { return *cast(float*)(cast(size_t)&this + 12); }
				float NoiseScale() { return *cast(float*)(cast(size_t)&this + 8); }
				float Base() { return *cast(float*)(cast(size_t)&this + 4); }
			}
			bool Enabled() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool Enabled(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final auto ref ScriptArray!(TerrainLayerSetup.TerrainFilteredMaterial) Materials() { return *cast(ScriptArray!(TerrainLayerSetup.TerrainFilteredMaterial)*)(cast(size_t)cast(void*)this + 60); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
}
