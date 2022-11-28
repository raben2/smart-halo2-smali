.class Lcom/instabug/bug/instabugdisclaimer/a;
.super Ljava/lang/Object;
.source "InstabugDisclaimer.java"


# static fields
.field private static a:Ljava/lang/String; = "Disclaimer: Once submitted, this feedback and [metadata](#metadata-screen) will be sent to and stored on Instabug\'s servers.<P/><P/>[Learn more](http://grasshopper.codes)."


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static a()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getInstance()Lcom/instabug/library/analytics/AnalyticsWrapper;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-virtual {v0, v2}, Lcom/instabug/library/analytics/AnalyticsWrapper;->catchApiUsageAsync([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    .line 2
    sget-object v0, Lcom/instabug/library/Feature;->CONSOLE_LOGS:Lcom/instabug/library/Feature;

    sget-object v2, Lcom/instabug/library/Feature$State;->DISABLED:Lcom/instabug/library/Feature$State;

    invoke-static {v0, v2}, Lcom/instabug/library/core/InstabugCore;->setFeatureState(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V

    .line 3
    sget-object v0, Lcom/instabug/library/Feature;->TRACK_USER_STEPS:Lcom/instabug/library/Feature;

    sget-object v2, Lcom/instabug/library/Feature$State;->DISABLED:Lcom/instabug/library/Feature$State;

    invoke-static {v0, v2}, Lcom/instabug/library/core/InstabugCore;->setFeatureState(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V

    .line 4
    sget-object v0, Lcom/instabug/library/Feature;->REPRO_STEPS:Lcom/instabug/library/Feature;

    sget-object v2, Lcom/instabug/library/Feature$State;->DISABLED:Lcom/instabug/library/Feature$State;

    invoke-static {v0, v2}, Lcom/instabug/library/core/InstabugCore;->setFeatureState(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V

    .line 5
    sget-object v0, Lcom/instabug/library/Feature;->VIEW_HIERARCHY_V2:Lcom/instabug/library/Feature;

    sget-object v2, Lcom/instabug/library/Feature$State;->DISABLED:Lcom/instabug/library/Feature$State;

    invoke-static {v0, v2}, Lcom/instabug/library/core/InstabugCore;->setFeatureState(Lcom/instabug/library/Feature;Lcom/instabug/library/Feature$State;)V

    .line 7
    sget-object v0, Lcom/instabug/library/Feature$State;->DISABLED:Lcom/instabug/library/Feature$State;

    invoke-static {v0}, Lcom/instabug/chat/Chats;->setState(Lcom/instabug/library/Feature$State;)V

    .line 8
    sget-object v0, Lcom/instabug/library/Feature$State;->DISABLED:Lcom/instabug/library/Feature$State;

    invoke-static {v0}, Lcom/instabug/chat/Replies;->setState(Lcom/instabug/library/Feature$State;)V

    .line 9
    sget-object v0, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    invoke-static {v0}, Lcom/instabug/bug/BugReporting;->setState(Lcom/instabug/library/Feature$State;)V

    const/4 v0, 0x2

    .line 10
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/instabug/bug/a;->b([I)V

    .line 12
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instabug/library/settings/SettingsManager;->setIsSessionEnabled(Z)V

    .line 13
    sget-object v0, Lcom/instabug/bug/instabugdisclaimer/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/instabug/bug/instabugdisclaimer/a;->a(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method static a(Ljava/lang/String;)V
    .locals 4

    .line 14
    invoke-static {}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getInstance()Lcom/instabug/library/analytics/AnalyticsWrapper;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/instabug/library/analytics/model/Api$Parameter;

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v3, "disclaimer"

    .line 15
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    .line 16
    const-class v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setType(Ljava/lang/Class;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 17
    invoke-virtual {v0, v1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->catchApiUsageAsync([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    .line 20
    sget-object v0, Lcom/instabug/library/Feature;->DISCLAIMER:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_0

    .line 21
    invoke-static {}, Lcom/instabug/bug/settings/a;->r()Lcom/instabug/bug/settings/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/instabug/bug/settings/a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
