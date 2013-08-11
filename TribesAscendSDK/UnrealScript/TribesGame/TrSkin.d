module UnrealScript.TribesGame.TrSkin;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.AnimSet;

extern(C++) interface TrSkin : UObject
{
	struct SkinStruct
	{
		public @property final auto ref int skinId() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __skinId[4];
		public @property final auto ref ScriptString SkinContentPath3p() { return *cast(ScriptString*)(cast(size_t)&this + 16); }
		private ubyte __SkinContentPath3p[12];
		public @property final auto ref ScriptString SkinContentPath1p() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
		private ubyte __SkinContentPath1p[12];
		public @property final auto ref ParticleSystem JetpackThrustTemplate() { return *cast(ParticleSystem*)(cast(size_t)&this + 36); }
		private ubyte __JetpackThrustTemplate[4];
		public @property final auto ref ParticleSystem JetpackRibbonTemplate() { return *cast(ParticleSystem*)(cast(size_t)&this + 32); }
		private ubyte __JetpackRibbonTemplate[4];
		public @property final auto ref ParticleSystem SkiThrustTemplate() { return *cast(ParticleSystem*)(cast(size_t)&this + 28); }
		private ubyte __SkiThrustTemplate[4];
		public @property final auto ref ScriptArray!(ScriptName) JetpackThrustEffectSockets() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)&this + 40); }
		private ubyte __JetpackThrustEffectSockets[12];
	}
	struct VehicleSkinStruct
	{
		public @property final auto ref AnimSet SeatAnimSet() { return *cast(AnimSet*)(cast(size_t)&this + 4); }
		private ubyte __SeatAnimSet[4];
		public @property final auto ref ScriptClass VehicleClass() { return *cast(ScriptClass*)(cast(size_t)&this + 0); }
		private ubyte __VehicleClass[4];
	}
	public @property final auto ref ScriptString ItemName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 64); }
	public @property final auto ref ScriptString InfoPanelDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 76); }
	public @property final auto ref int TranslucencySortPriority() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
	public @property final auto ref ScriptArray!(TrSkin.SkinStruct) Skins() { return *cast(ScriptArray!(TrSkin.SkinStruct)*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref int ItemId() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
	public @property final auto ref ScriptClass SkinMeleeDevice() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref ScriptArray!(TrSkin.VehicleSkinStruct) VehicleSkins() { return *cast(ScriptArray!(TrSkin.VehicleSkinStruct)*)(cast(size_t)cast(void*)this + 108); }
}
