// Version 5.0.0
controladdin JobControlAddIn
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
    Images = 'C:\Users\Annu\Documents\AL\Demo_Job\src\images\ui-bg_glow-ball_8_ffffff_600x600.png',
            'src\images\ui-bg_glow-ball_8_ffffff_600x600.png',
            'src\images\ui-bg_glow-ball_45_cd0a0a_600x600.png',
          'src\images/ui-bg_glow-ball_100_f9f9f9_600x600.png',
          'src\images/ui-bg_glow-ball_40_ffffff_600x600.png',
          'src\images/ui-bg_glow-ball_45_cd0a0a_600x600.png',
          'src\images/ui-bg_glow-ball_55_1c1c1c_600x600.png',
          'src\images/ui-bg_glow-ball_55_ffeb80_600x600.png',
          'src\images/ui-bg_glow-ball_8_ffffff_600x600.png',
          'src\images/ui-bg_highlight-soft_50_aaaaaa_1x100.png',
          'src\images/ui-bg_spotlight_40_aaaaaa_600x600.png',
          'src\images/ui-icons_222222_256x240.png',
          'src\images/ui-icons_4ca300_256x240.png',
          'src\images/ui-icons_ffcf29_256x240.png';
    Scripts =
          'src\script\jquery-3.5.1.min.js',
          'src\script\jquery-ui.min.js',
          'src\script\jquery.ui-contextmenu.min.js',
          'src\script\hammer-fix.js',
          'src\script\hammer.min.js',
          'src\script\d3.min.js',
          'src\script\tinycolor-1.4.1.min.js',
          'src\script\moment.min.js',
          'src\script\moment-timezone-with-data-10-year-range.min.js',
          'src\script\blobstream.min.js',
          'src\script\pdfkit.standalone.min.js',
          'src\script\svgtopdfkit.min.js',
          'src\script\nwaf-apptools-ie11.min.js',
          'src\script\nwaf-table-ie11.min.js',
          'src\script\nwaf-gantt-ie11.min.js',
          'src\script\nwaf-rab-ie11.min.js',
          'src\script\Widget.min.js';
    StyleSheets =
          'src\script\jquery-ui.min.css',
          'src\script\nwaf-apptools.min.css',
          'src\script\nwaf-table.min.css',
          'src\script\nwaf-gantt.min.css',
          'src\script\nwaf-rab.min.css',
          'src\script\Widget.min.css';
    StartupScript = 'src\script\nVSStartup.js';

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
