module UnrealScript.GameFramework.SeqAct_MobileAddInputZones;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.GameFramework.MobileInputZone;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_MobileAddInputZones : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.SeqAct_MobileAddInputZones")()); }
	private static __gshared SeqAct_MobileAddInputZones mDefaultProperties;
	@property final static SeqAct_MobileAddInputZones DefaultProperties() { mixin(MGDPC!(SeqAct_MobileAddInputZones, "SeqAct_MobileAddInputZones GameFramework.Default__SeqAct_MobileAddInputZones")()); }
	@property final auto ref
	{
		MobileInputZone NewZone() { mixin(MGPC!("MobileInputZone", 240)()); }
		ScriptName ZoneName() { mixin(MGPC!("ScriptName", 232)()); }
	}
}
