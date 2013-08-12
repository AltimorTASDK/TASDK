module UnrealScript.TribesGame.TrSkin;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.AnimSet;

extern(C++) interface TrSkin : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSkin")); }
	struct SkinStruct
	{
		private ubyte __buffer__[52];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrSkin.SkinStruct")); }
		@property final auto ref
		{
			int skinId() { return *cast(int*)(cast(size_t)&this + 0); }
			ScriptString SkinContentPath3p() { return *cast(ScriptString*)(cast(size_t)&this + 16); }
			ScriptString SkinContentPath1p() { return *cast(ScriptString*)(cast(size_t)&this + 4); }
			ParticleSystem JetpackThrustTemplate() { return *cast(ParticleSystem*)(cast(size_t)&this + 36); }
			ParticleSystem JetpackRibbonTemplate() { return *cast(ParticleSystem*)(cast(size_t)&this + 32); }
			ParticleSystem SkiThrustTemplate() { return *cast(ParticleSystem*)(cast(size_t)&this + 28); }
			ScriptArray!(ScriptName) JetpackThrustEffectSockets() { return *cast(ScriptArray!(ScriptName)*)(cast(size_t)&this + 40); }
		}
	}
	struct VehicleSkinStruct
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrSkin.VehicleSkinStruct")); }
		@property final auto ref
		{
			AnimSet SeatAnimSet() { return *cast(AnimSet*)(cast(size_t)&this + 4); }
			ScriptClass VehicleClass() { return *cast(ScriptClass*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		ScriptString ItemName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 64); }
		ScriptString InfoPanelDescription() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 76); }
		int TranslucencySortPriority() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
		ScriptArray!(TrSkin.SkinStruct) Skins() { return *cast(ScriptArray!(TrSkin.SkinStruct)*)(cast(size_t)cast(void*)this + 96); }
		int ItemId() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
		ScriptClass SkinMeleeDevice() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 92); }
		ScriptArray!(TrSkin.VehicleSkinStruct) VehicleSkins() { return *cast(ScriptArray!(TrSkin.VehicleSkinStruct)*)(cast(size_t)cast(void*)this + 108); }
	}
}
