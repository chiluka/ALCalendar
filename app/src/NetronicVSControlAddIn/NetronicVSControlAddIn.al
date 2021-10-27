// Version 5.0.0
controladdin NetronicVSControlAddIn
{
    RequestedHeight = 400;
    MinimumHeight = 400;
    //MaximumHeight = 0;
    RequestedWidth = 600;
    MinimumWidth = 600;
    //MaximumWidth = 0;
    VerticalStretch = true;
    VerticalShrink = true;
    HorizontalStretch = true;
    HorizontalShrink = true;
    Images =
        'src/NetronicVSControlAddIn/NetronicVSWidget/images/ui-bg_glow-ball_100_f9f9f9_600x600.png',
        'src/NetronicVSControlAddIn/NetronicVSWidget/images/ui-bg_glow-ball_40_ffffff_600x600.png',
        'src/NetronicVSControlAddIn/NetronicVSWidget/images/ui-bg_glow-ball_45_cd0a0a_600x600.png',
        'src/NetronicVSControlAddIn/NetronicVSWidget/images/ui-bg_glow-ball_55_1c1c1c_600x600.png',
        'src/NetronicVSControlAddIn/NetronicVSWidget/images/ui-bg_glow-ball_55_ffeb80_600x600.png',
        'src/NetronicVSControlAddIn/NetronicVSWidget/images/ui-bg_glow-ball_8_ffffff_600x600.png',
        'src/NetronicVSControlAddIn/NetronicVSWidget/images/ui-bg_highlight-soft_50_aaaaaa_1x100.png',
        'src/NetronicVSControlAddIn/NetronicVSWidget/images/ui-bg_spotlight_40_aaaaaa_600x600.png',
        'src/NetronicVSControlAddIn/NetronicVSWidget/images/ui-icons_222222_256x240.png',
        'src/NetronicVSControlAddIn/NetronicVSWidget/images/ui-icons_4ca300_256x240.png',
        'src/NetronicVSControlAddIn/NetronicVSWidget/images/ui-icons_ffcf29_256x240.png';
    Scripts =
        'C:\Users\user\Documents\AL\ALCalendar\app\src\NetronicVSControlAddIn\NetronicVSWidget\jquery-3.5.1.min.js',
        'C:\Users\user\Documents\AL\ALCalendar\app\src\NetronicVSControlAddIn\NetronicVSWidget\jquery-ui.min.js',
        'C:\Users\user\Documents\AL\ALCalendar\app\src\NetronicVSControlAddIn\NetronicVSWidget\jquery.ui-contextmenu.min.js',
        'C:\Users\user\Documents\AL\ALCalendar\app\src\NetronicVSControlAddIn\NetronicVSWidget\hammer-fix.js',
        'C:\Users\user\Documents\AL\ALCalendar\app\src\NetronicVSControlAddIn\NetronicVSWidget\hammer.min.js',
        'C:\Users\user\Documents\AL\ALCalendar\app\src\NetronicVSControlAddIn\NetronicVSWidget\d3.min.js',
        'C:\Users\user\Documents\AL\ALCalendar\app\src\NetronicVSControlAddIn\NetronicVSWidget\tinycolor-1.4.1.min.js',
        'C:\Users\user\Documents\AL\ALCalendar\app\src\NetronicVSControlAddIn\NetronicVSWidget\moment.min.js',
        'C:\Users\user\Documents\AL\ALCalendar\app\src\NetronicVSControlAddIn\NetronicVSWidget\moment-timezone-with-data-10-year-range.min.js',
        'C:\Users\user\Documents\AL\ALCalendar\app\src\NetronicVSControlAddIn\NetronicVSWidget\blobstream.min.js',
        'C:\Users\user\Documents\AL\ALCalendar\app\src\NetronicVSControlAddIn\NetronicVSWidget\pdfkit.standalone.min.js',
        'C:\Users\user\Documents\AL\ALCalendar\app\src\NetronicVSControlAddIn\NetronicVSWidget\svgtopdfkit.min.js',
        'C:\Users\user\Documents\AL\ALCalendar\app\src\NetronicVSControlAddIn\NetronicVSWidget\nwaf-apptools-ie11.min.js',
        'C:\Users\user\Documents\AL\ALCalendar\app\src\NetronicVSControlAddIn\NetronicVSWidget\nwaf-table-ie11.min.js',
        'C:\Users\user\Documents\AL\ALCalendar\app\src\NetronicVSControlAddIn\NetronicVSWidget\nwaf-gantt-ie11.min.js',
        'C:\Users\user\Documents\AL\ALCalendar\app\src\NetronicVSControlAddIn\NetronicVSWidget\nwaf-rab-ie11.min.js',
        'C:\Users\user\Documents\AL\ALCalendar\app\src\NetronicVSControlAddIn\NetronicVSWidget\Widget.min.js';
    StyleSheets =
        'C:\Users\user\Documents\AL\ALCalendar\app\src\NetronicVSControlAddIn\NetronicVSWidget\jquery-ui.min.css',
        'C:\Users\user\Documents\AL\ALCalendar\app\src\NetronicVSControlAddIn\NetronicVSWidget\nwaf-apptools.min.css',
        'C:\Users\user\Documents\AL\ALCalendar\app\src\NetronicVSControlAddIn\NetronicVSWidget\nwaf-table.min.css',
        'C:\Users\user\Documents\AL\ALCalendar\app\src\NetronicVSControlAddIn\NetronicVSWidget\nwaf-gantt.min.css',
        'C:\Users\user\Documents\AL\ALCalendar\app\src\NetronicVSControlAddIn\NetronicVSWidget\nwaf-rab.min.css',
        'C:\Users\user\Documents\AL\ALCalendar\app\src\NetronicVSControlAddIn\NetronicVSWidget\Widget.min.css';
    StartupScript = 'C:\Users\user\Documents\AL\ALCalendar\app\src\NetronicVSControlAddIn\NetronicVSWidget\nVSStartup.js';

    event OnControlAddInReady();
    event OnRequestSettings(eventArgs: JsonObject);

    event OnClicked(eventArgs: JsonObject);
    event OnDoubleClicked(eventArgs: JsonObject);

    event OnDragStart(eventArgs: JsonObject);
    event OnDragEnd(eventArgs: JsonObject);

    event CanDrag(eventArgs: JsonObject);
    event OnDrop(eventArgs: JsonObject);

    event OnSelectionChanged(eventArgs: JsonObject);

    event OnCollapseStateChanged(eventArgs: JsonObject);

    event OnCurveCollapseStateChanged(eventArgs: JsonObject);

    event OnContextMenuItemClicked(eventArgs: JsonObject);

    event OnTableCellDefinitionWidthChanged(eventArgs: JsonObject);

    event OnTimeAreaViewParametersChanged(eventArgs: JsonObject);
    event OnVerticalScrollOffsetChanged(eventArgs: JsonObject);

    event OnPing();
    event OnSaveAsPDFFinished();

    procedure SetSettings(settings: JsonObject);
    procedure FitFullTimeAreaIntoView();
    procedure FitTimeAreaIntoView(dtStart: DateTime; dtEnd: DateTime);
    procedure SetTimeResolutionForView(unit: Text; unitCount: Decimal; start: DateTime);
    procedure RemoveAll();
    procedure Render();
    procedure ScrollToObject(objectType: Integer; objectID: Text; targetPositionInView: Integer; highlightingEnabled: Boolean);
    procedure ScrollToDate(dt: DateTime);

    procedure SelectObjects(objectType: Integer; objectIDs: JsonArray; visualType: Integer);

    procedure SaveAsPDF(fileName: Text; options: JsonObject);

    procedure About();

    procedure AddActivities(container: JsonArray);
    procedure UpdateActivities(container: JsonArray);
    procedure RemoveActivities(container: JsonArray);

    procedure AddAllocations(container: JsonArray);
    procedure UpdateAllocations(container: JsonArray);
    procedure RemoveAllocations(container: JsonArray);

    procedure AddCalendars(container: JsonArray);
    procedure UpdateCalendars(container: JsonArray);
    procedure RemoveCalendars(container: JsonArray);

    procedure AddCurves(container: JsonArray);
    procedure UpdateCurves(container: JsonArray);
    procedure RemoveCurves(container: JsonArray);

    procedure AddResources(container: JsonArray);
    procedure UpdateResources(container: JsonArray);
    procedure RemoveResources(container: JsonArray);

    procedure AddLinks(container: JsonArray);
    procedure UpdateLinks(container: JsonArray);
    procedure RemoveLinks(container: JsonArray);

    procedure AddEntities(container: JsonArray);
    procedure UpdateEntities(container: JsonArray);
    procedure RemoveEntities(container: JsonArray);

    procedure AddSymbols(container: JsonArray);
    procedure UpdateSymbols(container: JsonArray);
    procedure RemoveSymbols(container: JsonArray);

    procedure AddContextMenus(container: JsonArray);
    procedure UpdateContextMenus(container: JsonArray);
    procedure RemoveContextMenus(container: JsonArray);

    procedure AddDateLines(container: JsonArray);
    procedure UpdateDateLines(container: JsonArray);
    procedure RemoveDateLines(container: JsonArray);

    procedure AddTooltipTemplates(container: JsonArray);
    procedure UpdateTooltipTemplates(container: JsonArray);
    procedure RemoveTooltipTemplates(container: JsonArray);

    procedure AddTableRowDefinitions(container: JsonArray);
    procedure UpdateTableRowDefinitions(container: JsonArray);
    procedure RemoveTableRowDefinitions(container: JsonArray);

    procedure AddPeriodHighlighters(container: JsonArray);
    procedure UpdatePeriodHighlighters(container: JsonArray);
    procedure RemovePeriodHighlighters(container: JsonArray);
}
