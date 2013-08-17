module UnrealScript.TribesGame.TrSkin;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.AnimSet;

extern(C++) interface TrSkin : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrSkin")); }
	private static __gshared TrSkin mDefaultProperties;
	@property final static TrSkin DefaultProperties() { mixin(MGDPC("TrSkin", "TrSkin TribesGame.Default__TrSkin")); }
	struct SkinStruct
	{
		private ubyte __buffer__[52];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct TribesGame.TrSkin.SkinStruct")); }
		@property final auto ref
		{
			int skinId() { mixin(MGPS("int", 0)); }
			ScriptString SkinContentPath3p() { mixin(MGPS("ScriptString", 16)); }
			ScriptString SkinContentPath1p() { mixin(MGPS("ScriptString", 4)); }
			ParticleSystem JetpackThrustTemplate() { mixin(MGPS("ParticleSystem", 36)); }
			ParticleSystem JetpackRibbonTemplate() { mixin(MGPS("ParticleSystem", 32)); }
			ParticleSystem SkiThrustTemplate() { mixin(MGPS("ParticleSystem", 28)); }
			ScriptArray!(ScriptName) JetpackThrustEffectSockets() { mixin(MGPS("ScriptArray!(ScriptName)", 40)); }
		}
	}
	struct VehicleSkinStruct
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct TribesGame.TrSkin.VehicleSkinStruct")); }
		@property final auto ref
		{
			AnimSet SeatAnimSet() { mixin(MGPS("AnimSet", 4)); }
			ScriptClass VehicleClass() { mixin(MGPS("ScriptClass", 0)); }
		}
	}
	@property final auto ref
	{
		ScriptString ItemName() { mixin(MGPC("ScriptString", 64)); }
		ScriptString InfoPanelDescription() { mixin(MGPC("ScriptString", 76)); }
		int TranslucencySortPriority() { mixin(MGPC("int", 88)); }
		ScriptArray!(TrSkin.SkinStruct) Skins() { mixin(MGPC("ScriptArray!(TrSkin.SkinStruct)", 96)); }
		int ItemId() { mixin(MGPC("int", 60)); }
		ScriptClass SkinMeleeDevice() { mixin(MGPC("ScriptClass", 92)); }
		ScriptArray!(TrSkin.VehicleSkinStruct) VehicleSkins() { mixin(MGPC("ScriptArray!(TrSkin.VehicleSkinStruct)", 108)); }
	}
}
