.class public Lcom/instabug/survey/network/service/InstabugSurveysSubmitterService;
.super Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;
.source "InstabugSurveysSubmitterService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "submitSurveys started"

    .line 2
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/instabug/survey/cache/SurveysCacheManager;->getReadyToSendSurveys()Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ready to send surveys size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/models/Survey;

    .line 6
    invoke-static {}, Lcom/instabug/survey/network/service/a;->a()Lcom/instabug/survey/network/service/a;

    move-result-object v2

    new-instance v3, Lcom/instabug/survey/network/service/InstabugSurveysSubmitterService$a;

    invoke-direct {v3, p0, v1}, Lcom/instabug/survey/network/service/InstabugSurveysSubmitterService$a;-><init>(Lcom/instabug/survey/network/service/InstabugSurveysSubmitterService;Lcom/instabug/survey/models/Survey;)V

    invoke-virtual {v2, p0, v1, v3}, Lcom/instabug/survey/network/service/a;->a(Landroid/content/Context;Lcom/instabug/survey/models/Survey;Lcom/instabug/library/network/Request$Callbacks;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-class v0, Lcom/instabug/survey/network/service/InstabugSurveysSubmitterService;

    const/16 v1, 0xa15

    invoke-static {p0, v0, v1, p1}, Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;->enqueueInstabugWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected runBackgroundTask()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "runBackgroundTask started"

    .line 1
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/instabug/survey/network/service/InstabugSurveysSubmitterService;->a()V

    return-void
.end method
