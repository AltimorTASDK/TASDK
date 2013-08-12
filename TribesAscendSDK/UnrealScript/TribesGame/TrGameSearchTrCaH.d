module UnrealScript.TribesGame.TrGameSearchTrCaH;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameSearchCommon;

extern(C++) interface TrGameSearchTrCaH : TrGameSearchCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameSearchTrCaH")); }
	private static __gshared TrGameSearchTrCaH mDefaultProperties;
	@property final static TrGameSearchTrCaH DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrGameSearchTrCaH)("TrGameSearchTrCaH TribesGame.Default__TrGameSearchTrCaH")); }
}
