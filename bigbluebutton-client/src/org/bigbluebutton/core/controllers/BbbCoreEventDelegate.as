package org.bigbluebutton.core.controllers
{
  import flash.events.IEventDispatcher;
  
  import org.bigbluebutton.core.EventConstants;
  import org.bigbluebutton.core.events.CoreEvent;
  import org.bigbluebutton.core.managers.UserManager;

  public class BbbCoreEventDelegate
  {
    public var dispatcher:IEventDispatcher;
    
    public function handleGetMyRoleReq():void {
      var message:Object = new Object();
      message.role = UserManager.getInstance().getConference().whatsMyRole();
      
      var event:CoreEvent = new CoreEvent(EventConstants.GET_MY_ROLE_RESP);
      event.message = message;
      
      dispatcher.dispatchEvent(event);
    }
  }
}