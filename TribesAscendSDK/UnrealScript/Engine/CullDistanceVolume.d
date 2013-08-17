module UnrealScript.Engine.CullDistanceVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Volume;

extern(C++) interface CullDistanceVolume : Volume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.CullDistanceVolume")); }
	private static __gshared CullDistanceVolume mDefaultProperties;
	@property final static CullDistanceVolume DefaultProperties() { mixin(MGDPC("CullDistanceVolume", "CullDistanceVolume Engine.Default__CullDistanceVolume")); }
	struct CullDistanceSizePair
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.CullDistanceVolume.CullDistanceSizePair")); }
		@property final auto ref
		{
			float CullDistance() { mixin(MGPS("float", 4)); }
			float Size() { mixin(MGPS("float", 0)); }
		}
	}
	@property final
	{
		@property final auto ref ScriptArray!(CullDistanceVolume.CullDistanceSizePair) CullDistances() { mixin(MGPC("ScriptArray!(CullDistanceVolume.CullDistanceSizePair)", 520)); }
		bool bEnabled() { mixin(MGBPC(532, 0x1)); }
		bool bEnabled(bool val) { mixin(MSBPC(532, 0x1)); }
	}
}
