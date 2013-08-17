module UnrealScript.TribesGame.TrGameSearchTrTeamRabbit;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrGameSearchCommon;

extern(C++) interface TrGameSearchTrTeamRabbit : TrGameSearchCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrGameSearchTrTeamRabbit")()); }
	private static __gshared TrGameSearchTrTeamRabbit mDefaultProperties;
	@property final static TrGameSearchTrTeamRabbit DefaultProperties() { mixin(MGDPC!(TrGameSearchTrTeamRabbit, "TrGameSearchTrTeamRabbit TribesGame.Default__TrGameSearchTrTeamRabbit")()); }
}
