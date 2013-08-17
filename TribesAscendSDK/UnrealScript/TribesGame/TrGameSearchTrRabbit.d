module UnrealScript.TribesGame.TrGameSearchTrRabbit;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameSearchCommon;

extern(C++) interface TrGameSearchTrRabbit : TrGameSearchCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrGameSearchTrRabbit")); }
	private static __gshared TrGameSearchTrRabbit mDefaultProperties;
	@property final static TrGameSearchTrRabbit DefaultProperties() { mixin(MGDPC("TrGameSearchTrRabbit", "TrGameSearchTrRabbit TribesGame.Default__TrGameSearchTrRabbit")); }
}
