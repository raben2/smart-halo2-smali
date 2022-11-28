.class public Lcom/instabug/featuresrequest/FeatureRequests;
.super Ljava/lang/Object;
.source "FeatureRequests.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs setEmailFieldRequired(Z[I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/instabug/library/APIBuildChecker;->check()V

    .line 2
    invoke-static {}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getInstance()Lcom/instabug/library/analytics/AnalyticsWrapper;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/instabug/library/analytics/model/Api$Parameter;

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v3, "isEmailFieldRequired"

    .line 3
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 4
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setType(Ljava/lang/Class;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    .line 5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setValue(Ljava/lang/Object;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v3, "actions"

    .line 6
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    .line 7
    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setValue(Ljava/lang/Object;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    .line 8
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setValue(Ljava/lang/Object;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 9
    invoke-virtual {v0, v1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->catchApiUsageAsync([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    .line 17
    invoke-static {p0, p1}, Lcom/instabug/featuresrequest/a;->a(Z[I)V

    return-void
.end method

.method public static setState(Lcom/instabug/library/Feature$State;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/instabug/library/APIBuildChecker;->check()V

    .line 2
    invoke-static {}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getInstance()Lcom/instabug/library/analytics/AnalyticsWrapper;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/instabug/library/analytics/model/Api$Parameter;

    new-instance v2, Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-direct {v2}, Lcom/instabug/library/analytics/model/Api$Parameter;-><init>()V

    const-string v3, "state"

    .line 3
    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setName(Ljava/lang/String;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    .line 4
    const-class v3, Lcom/instabug/library/Feature$State;

    invoke-virtual {v2, v3}, Lcom/instabug/library/analytics/model/Api$Parameter;->setType(Ljava/lang/Class;)Lcom/instabug/library/analytics/model/Api$Parameter;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 5
    invoke-virtual {v0, v1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->catchApiUsageAsync([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    .line 8
    invoke-static {p0}, Lcom/instabug/featuresrequest/a;->a(Lcom/instabug/library/Feature$State;)V

    return-void
.end method

.method public static show()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/library/APIBuildChecker;->check()V

    .line 2
    invoke-static {}, Lcom/instabug/featuresrequest/a;->a()V

    .line 3
    invoke-static {}, Lcom/instabug/library/analytics/AnalyticsWrapper;->getInstance()Lcom/instabug/library/analytics/AnalyticsWrapper;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/instabug/library/analytics/model/Api$Parameter;

    invoke-virtual {v0, v1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->catchApiUsageAsync([Lcom/instabug/library/analytics/model/Api$Parameter;)V

    return-void
.end method
