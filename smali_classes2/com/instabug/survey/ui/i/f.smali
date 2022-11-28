.class public Lcom/instabug/survey/ui/i/f;
.super Lcom/instabug/library/core/ui/BasePresenter;
.source "SurveyFragmentPresenter.java"

# interfaces
.implements Lcom/instabug/survey/ui/i/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/BasePresenter<",
        "Lcom/instabug/survey/ui/i/e;",
        ">;",
        "Lcom/instabug/survey/ui/i/d;"
    }
.end annotation


# instance fields
.field private a:Lcom/instabug/survey/models/Survey;


# direct methods
.method public constructor <init>(Lcom/instabug/survey/ui/i/e;Lcom/instabug/survey/models/Survey;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/core/ui/BasePresenter;-><init>(Lcom/instabug/library/core/ui/BaseContract$View;)V

    .line 2
    iput-object p2, p0, Lcom/instabug/survey/ui/i/f;->a:Lcom/instabug/survey/models/Survey;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/ui/i/e;

    if-eqz v0, :cond_1

    .line 5
    sget-object v1, Lcom/instabug/library/Feature;->WHITE_LABELING:Lcom/instabug/library/Feature;

    invoke-static {v1}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v1

    sget-object v2, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v1, v2, :cond_0

    .line 7
    invoke-interface {v0}, Lcom/instabug/survey/ui/i/e;->hidePoweredByFooter()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v0}, Lcom/instabug/survey/ui/i/e;->showPoweredByFooter()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/instabug/survey/models/Survey;)Z
    .locals 1

    .line 10
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Lcom/instabug/survey/models/Survey;I)Z
    .locals 1

    .line 11
    invoke-virtual {p0, p1}, Lcom/instabug/survey/ui/i/f;->a(Lcom/instabug/survey/models/Survey;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x2

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/survey/models/b;

    .line 13
    invoke-virtual {p1}, Lcom/instabug/survey/models/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/ui/i/e;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/instabug/survey/ui/i/f;->a:Lcom/instabug/survey/models/Survey;

    invoke-interface {v0, v1}, Lcom/instabug/survey/ui/i/e;->c(Lcom/instabug/survey/models/Survey;)V

    :cond_0
    return-void
.end method
