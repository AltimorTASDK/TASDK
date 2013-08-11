module UnrealScript.Engine.TerrainLayerSetup;

import ScriptClasses;
import UnrealScript.Engine.TerrainMaterial;
import UnrealScript.Core.UObject;

extern(C++) interface TerrainLayerSetup : UObject
{
	struct TerrainFilteredMaterial
	{
		// WARNING: Property 'Material' has the same name as a defined type!
		public @property final auto ref float Alpha() { return *cast(float*)(cast(size_t)&this + 76); }
		private ubyte __Alpha[4];
		public @property final auto ref TerrainLayerSetup.FilterLimit MaxSlope() { return *cast(TerrainLayerSetup.FilterLimit*)(cast(size_t)&this + 60); }
		private ubyte __MaxSlope[16];
		public @property final auto ref TerrainLayerSetup.FilterLimit MinSlope() { return *cast(TerrainLayerSetup.FilterLimit*)(cast(size_t)&this + 44); }
		private ubyte __MinSlope[16];
		public @property final auto ref TerrainLayerSetup.FilterLimit MaxHeight() { return *cast(TerrainLayerSetup.FilterLimit*)(cast(size_t)&this + 28); }
		private ubyte __MaxHeight[16];
		public @property final auto ref TerrainLayerSetup.FilterLimit MinHeight() { return *cast(TerrainLayerSetup.FilterLimit*)(cast(size_t)&this + 12); }
		private ubyte __MinHeight[16];
		public @property final auto ref float NoisePercent() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __NoisePercent[4];
		public @property final auto ref float NoiseScale() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __NoiseScale[4];
		public @property final bool UseNoise() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool UseNoise(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __UseNoise[4];
	}
	struct FilterLimit
	{
		public @property final auto ref float NoiseAmount() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __NoiseAmount[4];
		public @property final auto ref float NoiseScale() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __NoiseScale[4];
		public @property final auto ref float Base() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __Base[4];
		public @property final bool Enabled() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
		public @property final bool Enabled(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		private ubyte __Enabled[4];
	}
	public @property final auto ref ScriptArray!(TerrainLayerSetup.TerrainFilteredMaterial) Materials() { return *cast(ScriptArray!(TerrainLayerSetup.TerrainFilteredMaterial)*)(cast(size_t)cast(void*)this + 60); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[27917], cast(void*)0, cast(void*)0);
	}
}
