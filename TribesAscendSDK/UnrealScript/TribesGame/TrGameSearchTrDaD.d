module UnrealScript.TribesGame.TrGameSearchTrDaD;

import ScriptClasses;
import UnrealScript.TribesGame.TrGameSearchCommon;

extern(C++) interface TrGameSearchTrDaD : TrGameSearchCommon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrGameSearchTrDaD")); }
	private static __gshared TrGameSearchTrDaD mDefaultProperties;
	@property final static TrGameSearchTrDaD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrGameSearchTrDaD)("TrGameSearchTrDaD TribesGame.Default__TrGameSearchTrDaD")); }
}
