module UnrealScript.UnrealEd.InterpTrackHeadTrackingHelper;

import ScriptClasses;
import UnrealScript.UnrealEd.InterpTrackHelper;

extern(C++) interface InterpTrackHeadTrackingHelper : InterpTrackHelper
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UnrealEd.InterpTrackHeadTrackingHelper")); }
	private static __gshared InterpTrackHeadTrackingHelper mDefaultProperties;
	@property final static InterpTrackHeadTrackingHelper DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackHeadTrackingHelper)("InterpTrackHeadTrackingHelper UnrealEd.Default__InterpTrackHeadTrackingHelper")); }
}
