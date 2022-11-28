.class Llayout/AssistantViewFragment$1;
.super Ljava/lang/Object;
.source "AssistantViewFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/AssistantViewFragment;->getVolumeSeekBarListener()Landroid/widget/SeekBar$OnSeekBarChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/AssistantViewFragment;


# direct methods
.method constructor <init>(Llayout/AssistantViewFragment;)V
    .locals 0

    .line 97
    iput-object p1, p0, Llayout/AssistantViewFragment$1;->this$0:Llayout/AssistantViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 100
    invoke-static {}, Llayout/AssistantViewFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAssistantVolumeChanged: new volume "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 110
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    .line 112
    iget-object v0, p0, Llayout/AssistantViewFragment$1;->this$0:Llayout/AssistantViewFragment;

    invoke-static {v0}, Llayout/AssistantViewFragment;->access$100(Llayout/AssistantViewFragment;)Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$Presenter;

    move-result-object v0

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$Presenter;->setAssistantVolume(I)V

    .line 113
    iget-object v0, p0, Llayout/AssistantViewFragment$1;->this$0:Llayout/AssistantViewFragment;

    iget-object v0, v0, Llayout/AssistantViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    sget-object v1, Lbike/smarthalo/app/analytics/assistant/AssistantConfigType;->Volume:Lbike/smarthalo/app/analytics/assistant/AssistantConfigType;

    invoke-static {v1}, Lbike/smarthalo/app/analytics/assistant/AnalyticsAssistant;->getAssistantConfigChangedEvent(Lbike/smarthalo/app/analytics/assistant/AssistantConfigType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    const-string v0, "assistantVolume"

    .line 114
    invoke-static {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->updateUserSettings(Ljava/lang/String;I)V

    return-void
.end method
