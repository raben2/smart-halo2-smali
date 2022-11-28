.class public Lcom/instabug/featuresrequest/g/d;
.super Ljava/lang/Object;
.source "FeaturesRequestUtils.java"


# direct methods
.method public static a()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/Feature;->FEATURE_REQUESTS:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->isFeatureAvailable(Lcom/instabug/library/Feature;)Z

    move-result v0

    return v0
.end method

.method public static b()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/instabug/library/Feature;->FEATURE_REQUESTS:Lcom/instabug/library/Feature;

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
