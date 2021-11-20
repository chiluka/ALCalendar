// Extension to hammer.js
// As of IE 11: When running inside a WebBrowser control in compatibility mode no pointer events are triggered,
// but nevertheless the WebBrowser control has defined the corresponding properties (MSPointerEvent, PointerEvent)
if (navigator.userAgent.match(/MSIE/)) { 
   delete window.MSPointerEvent;
   delete window.PointerEvent;
}
