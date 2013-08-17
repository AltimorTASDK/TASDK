module UnrealScript.TribesGame.TrDevice_ERechargePack_Pathfinder;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_ERechargePack;

extern(C++) interface TrDevice_ERechargePack_Pathfinder : TrDevice_ERechargePack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_ERechargePack_Pathfinder")()); }
	private static __gshared TrDevice_ERechargePack_Pathfinder mDefaultProperties;
	@property final static TrDevice_ERechargePack_Pathfinder DefaultProperties() { mixin(MGDPC!(TrDevice_ERechargePack_Pathfinder, "TrDevice_ERechargePack_Pathfinder TribesGame.Default__TrDevice_ERechargePack_Pathfinder")()); }
}
