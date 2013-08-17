module UnrealScript.Engine.DmgType_Telefragged;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DamageType;

extern(C++) interface DmgType_Telefragged : DamageType
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.DmgType_Telefragged")()); }
	private static __gshared DmgType_Telefragged mDefaultProperties;
	@property final static DmgType_Telefragged DefaultProperties() { mixin(MGDPC!(DmgType_Telefragged, "DmgType_Telefragged Engine.Default__DmgType_Telefragged")()); }
}
