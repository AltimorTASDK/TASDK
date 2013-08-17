module UnrealScript.Engine.ActorFactoryFogVolumeConstantDensityInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.ActorFactory;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface ActorFactoryFogVolumeConstantDensityInfo : ActorFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.ActorFactoryFogVolumeConstantDensityInfo")()); }
	private static __gshared ActorFactoryFogVolumeConstantDensityInfo mDefaultProperties;
	@property final static ActorFactoryFogVolumeConstantDensityInfo DefaultProperties() { mixin(MGDPC!(ActorFactoryFogVolumeConstantDensityInfo, "ActorFactoryFogVolumeConstantDensityInfo Engine.Default__ActorFactoryFogVolumeConstantDensityInfo")()); }
	@property final
	{
		@property final auto ref MaterialInterface SelectedMaterial() { mixin(MGPC!("MaterialInterface", 92)()); }
		bool bNothingSelected() { mixin(MGBPC!(96, 0x1)()); }
		bool bNothingSelected(bool val) { mixin(MSBPC!(96, 0x1)()); }
	}
}
