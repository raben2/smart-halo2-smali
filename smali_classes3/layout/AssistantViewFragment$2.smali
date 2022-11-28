.class Llayout/AssistantViewFragment$2;
.super Ljava/lang/Object;
.source "AssistantViewFragment.java"

# interfaces
.implements Llayout/SettingsSwitch$SettingButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/AssistantViewFragment;->getAssistantSoundSwitchListeners()Llayout/SettingsSwitch$SettingButtonEventListener;
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

    .line 121
    iput-object p1, p0, Llayout/AssistantViewFragment$2;->this$0:Llayout/AssistantViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeftButtonPressed()V
    .locals 2

    .line 124
    iget-object v0, p0, Llayout/AssistantViewFragment$2;->this$0:Llayout/AssistantViewFragment;

    invoke-static {v0}, Llayout/AssistantViewFragment;->access$100(Llayout/AssistantViewFragment;)Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$Presenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$Presenter;->toggleAssistantSound(Z)V

    .line 125
    iget-object v0, p0, Llayout/AssistantViewFragment$2;->this$0:Llayout/AssistantViewFragment;

    iget-object v0, v0, Llayout/AssistantViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    sget-object v1, Lbike/smarthalo/app/analytics/assistant/AssistantConfigType;->Sound:Lbike/smarthalo/app/analytics/assistant/AssistantConfigType;

    invoke-static {v1}, Lbike/smarthalo/app/analytics/assistant/AnalyticsAssistant;->getAssistantConfigChangedEvent(Lbike/smarthalo/app/analytics/assistant/AssistantConfigType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    return-void
.end method

.method public onRightButtonPressed()V
    .locals 2

    .line 130
    iget-object v0, p0, Llayout/AssistantViewFragment$2;->this$0:Llayout/AssistantViewFragment;

    invoke-static {v0}, Llayout/AssistantViewFragment;->access$100(Llayout/AssistantViewFragment;)Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$Presenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/AssistantContract$Presenter;->toggleAssistantSound(Z)V

    .line 131
    iget-object v0, p0, Llayout/AssistantViewFragment$2;->this$0:Llayout/AssistantViewFragment;

    iget-object v0, v0, Llayout/AssistantViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    sget-object v1, Lbike/smarthalo/app/analytics/assistant/AssistantConfigType;->Sound:Lbike/smarthalo/app/analytics/assistant/AssistantConfigType;

    invoke-static {v1}, Lbike/smarthalo/app/analytics/assistant/AnalyticsAssistant;->getAssistantConfigChangedEvent(Lbike/smarthalo/app/analytics/assistant/AssistantConfigType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    return-void
.end method
