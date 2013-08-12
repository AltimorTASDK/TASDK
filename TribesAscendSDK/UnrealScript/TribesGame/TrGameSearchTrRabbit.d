module UnrealScript.TribesGame.TrGameSearchTrRabbit;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameSearchCommon;

extern(C++) interface TrGameSearchTrRabbit : TrGameSearchCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameSearchTrRabbit")); }
	private static __gshared TrGameSearchTrRabbit mDefaultProperties;
	@property final static TrGameSearchTrRabbit DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrGameSearchTrRabbit)("TrGameSearchTrRabbit TribesGame.Default__TrGameSearchTrRabbit")); }
}
