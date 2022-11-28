.class Lbike/smarthalo/app/activities/TouchInputsActivity$1;
.super Ljava/lang/Object;
.source "TouchInputsActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/activities/TouchInputsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/activities/TouchInputsActivity;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/activities/TouchInputsActivity;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity$1;->this$0:Lbike/smarthalo/app/activities/TouchInputsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 113
    iget-object p1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity$1;->this$0:Lbike/smarthalo/app/activities/TouchInputsActivity;

    iget-object p1, p1, Lbike/smarthalo/app/activities/TouchInputsActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    sget-object v0, Lbike/smarthalo/app/analytics/assistant/TouchInputConfigType;->Volume:Lbike/smarthalo/app/analytics/assistant/TouchInputConfigType;

    invoke-static {v0}, Lbike/smarthalo/app/analytics/assistant/AnalyticsAssistant;->getTouchInputConfigChangedEvent(Lbike/smarthalo/app/analytics/assistant/TouchInputConfigType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 114
    iget-object p1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity$1;->this$0:Lbike/smarthalo/app/activities/TouchInputsActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/TouchInputsActivity;->access$200(Lbike/smarthalo/app/activities/TouchInputsActivity;)Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$Presenter;

    move-result-object p1

    iget-object v0, p0, Lbike/smarthalo/app/activities/TouchInputsActivity$1;->this$0:Lbike/smarthalo/app/activities/TouchInputsActivity;

    invoke-static {v0}, Lbike/smarthalo/app/activities/TouchInputsActivity;->access$000(Lbike/smarthalo/app/activities/TouchInputsActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lbike/smarthalo/app/activities/TouchInputsActivity$1;->this$0:Lbike/smarthalo/app/activities/TouchInputsActivity;

    invoke-static {v1}, Lbike/smarthalo/app/activities/TouchInputsActivity;->access$100(Lbike/smarthalo/app/activities/TouchInputsActivity;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/TouchInputsListContract$Presenter;->onTouchSoundUpdated(IZ)V

    return-void
.end method
