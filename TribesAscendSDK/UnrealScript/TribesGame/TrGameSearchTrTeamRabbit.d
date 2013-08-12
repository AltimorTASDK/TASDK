module UnrealScript.TribesGame.TrGameSearchTrTeamRabbit;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameSearchCommon;

extern(C++) interface TrGameSearchTrTeamRabbit : TrGameSearchCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameSearchTrTeamRabbit")); }
	private static __gshared TrGameSearchTrTeamRabbit mDefaultProperties;
	@property final static TrGameSearchTrTeamRabbit DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrGameSearchTrTeamRabbit)("TrGameSearchTrTeamRabbit TribesGame.Default__TrGameSearchTrTeamRabbit")); }
}
