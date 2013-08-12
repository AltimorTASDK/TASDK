module UnrealScript.TribesGame.TrGameSearchTrSiege;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameSearchCommon;

extern(C++) interface TrGameSearchTrSiege : TrGameSearchCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameSearchTrSiege")); }
	private static __gshared TrGameSearchTrSiege mDefaultProperties;
	@property final static TrGameSearchTrSiege DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrGameSearchTrSiege)("TrGameSearchTrSiege TribesGame.Default__TrGameSearchTrSiege")); }
}
