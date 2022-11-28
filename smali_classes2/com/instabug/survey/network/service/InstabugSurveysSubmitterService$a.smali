.class Lcom/instabug/survey/network/service/InstabugSurveysSubmitterService$a;
.super Ljava/lang/Object;
.source "InstabugSurveysSubmitterService.java"

# interfaces
.implements Lcom/instabug/library/network/Request$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/network/service/InstabugSurveysSubmitterService;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/network/Request$Callbacks<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/survey/models/Survey;


# direct methods
.method constructor <init>(Lcom/instabug/survey/network/service/InstabugSurveysSubmitterService;Lcom/instabug/survey/models/Survey;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/survey/network/service/InstabugSurveysSubmitterService$a;->a:Lcom/instabug/survey/models/Survey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/instabug/survey/network/service/InstabugSurveysSubmitterService$a;->a:Lcom/instabug/survey/models/Survey;

    sget-object v0, Lcom/instabug/survey/e/c/f;->SYNCED:Lcom/instabug/survey/e/c/f;

    invoke-virtual {p1, v0}, Lcom/instabug/survey/models/Survey;->setSurveyState(Lcom/instabug/survey/e/c/f;)V

    .line 2
    iget-object p1, p0, Lcom/instabug/survey/network/service/InstabugSurveysSubmitterService$a;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->isLastEventSubmit()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/instabug/survey/network/service/InstabugSurveysSubmitterService$a;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->clearAnswers()V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/instabug/survey/network/service/InstabugSurveysSubmitterService$a;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getSurveyEvents()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/instabug/survey/network/service/InstabugSurveysSubmitterService$a;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getSurveyEvents()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/instabug/survey/network/service/InstabugSurveysSubmitterService$a;->a:Lcom/instabug/survey/models/Survey;

    invoke-static {p1}, Lcom/instabug/survey/cache/SurveysCacheManager;->update(Lcom/instabug/survey/models/Survey;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onFailed(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/instabug/survey/network/service/InstabugSurveysSubmitterService$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onSucceeded(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/instabug/survey/network/service/InstabugSurveysSubmitterService$a;->a(Ljava/lang/Boolean;)V

    return-void
.end method
