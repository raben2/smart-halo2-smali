.class Lcom/instabug/survey/c$c;
.super Ljava/lang/Object;
.source "SurveysManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/c;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/instabug/survey/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/survey/cache/SurveysCacheManager;->getSurveys()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/models/Survey;

    .line 3
    invoke-virtual {v1}, Lcom/instabug/survey/models/Survey;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/instabug/survey/models/Survey;->shouldShowAgain()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/instabug/survey/models/Survey;->incrementSessionCount()V

    .line 5
    invoke-static {v1}, Lcom/instabug/survey/cache/SurveysCacheManager;->updateSessions(Lcom/instabug/survey/models/Survey;)V

    goto :goto_0

    :cond_1
    return-void
.end method
