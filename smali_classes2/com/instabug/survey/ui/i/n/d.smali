.class Lcom/instabug/survey/ui/i/n/d;
.super Lcom/instabug/library/core/ui/BasePresenter;
.source "WelcomeFragmentPresenter.java"

# interfaces
.implements Lcom/instabug/survey/ui/i/n/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/BasePresenter<",
        "Lcom/instabug/survey/ui/i/n/c;",
        ">;",
        "Lcom/instabug/survey/ui/i/n/b;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/instabug/survey/ui/i/n/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/core/ui/BasePresenter;-><init>(Lcom/instabug/library/core/ui/BaseContract$View;)V

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

    check-cast v0, Lcom/instabug/survey/ui/i/n/c;

    if-eqz v0, :cond_1

    .line 4
    sget-object v1, Lcom/instabug/library/Feature;->WHITE_LABELING:Lcom/instabug/library/Feature;

    invoke-static {v1}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v1

    sget-object v2, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v1, v2, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/instabug/survey/ui/i/n/c;->hidePoweredByFooter()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/instabug/survey/ui/i/n/c;->showPoweredByFooter()V

    :cond_1
    :goto_0
    return-void
.end method
