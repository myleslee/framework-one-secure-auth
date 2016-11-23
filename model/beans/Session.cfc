/**** @file model\beans\Session.cfc* @author Denard Springle ( denard.springle@gmail.com )* @description I am a session bean used for storing user sessions**/component displayname="Session" accessors="true" {	property name="sessionId" type="string" default="";	property name="userId" type="numeric" default="0";	property name="firstName" type="string" default="";	property name="lastName" type="string" default="";	property name="hmacCode" type="string" default="";	property name="role" type="numeric" default="0";	property name="lastActionAt" type="any" default="";	public struct function getMemento() {		local._Session = {};		local._Session[ 'sessionId' ] = getSessionId();		local._Session[ 'userId' ] = getUserId();		local._Session[ 'firstName' ] = getFirstName();		local._Session[ 'lastName' ] = getLastName();		local._Session[ 'hmacCode' ] = getHmacCode();		local._Session[ 'role' ] = getRole();		local._Session[ 'lastActionAt' ] = getLastActionAt();		return local._Session;	}}