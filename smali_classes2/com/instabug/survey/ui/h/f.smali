.class public abstract Lcom/instabug/survey/ui/h/f;
.super Lcom/instabug/library/core/ui/InstabugBaseFragment;
.source "PopupQuestionFragment.java"

# interfaces
.implements Lcom/instabug/survey/ui/h/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/InstabugBaseFragment<",
        "Lcom/instabug/survey/ui/h/g;",
        ">;",
        "Lcom/instabug/survey/ui/h/e;"
    }
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "MF_CLASS_MASKS_FIELD"
    }
.end annotation


# instance fields
.field protected a:Lcom/instabug/survey/ui/h/g;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private b:Lcom/instabug/survey/ui/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/survey/models/Survey;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/h/f;->b:Lcom/instabug/survey/ui/a;

    invoke-interface {v0, p1}, Lcom/instabug/survey/ui/a;->a(Lcom/instabug/survey/models/Survey;)V

    return-void
.end method

.method public b(Lcom/instabug/survey/models/Survey;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/h/f;->b:Lcom/instabug/survey/ui/a;

    invoke-interface {v0, p1}, Lcom/instabug/survey/ui/a;->b(Lcom/instabug/survey/models/Survey;)V

    return-void
.end method

.method public d(Lcom/instabug/survey/models/Survey;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/b;

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/instabug/survey/ui/i/l/c/a;->a(Lcom/instabug/survey/models/Survey;Lcom/instabug/survey/models/b;)Lcom/instabug/survey/ui/i/l/c/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v1, p1, v0, v0}, Lcom/instabug/survey/ui/c;->a(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;II)V

    return-void
.end method

.method public e(Lcom/instabug/survey/models/Survey;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/h/f;->b:Lcom/instabug/survey/ui/a;

    invoke-interface {v0, p1}, Lcom/instabug/survey/ui/a;->a(Lcom/instabug/survey/models/Survey;)V

    return-void
.end method

.method public f(Lcom/instabug/survey/models/Survey;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/h/f;->b:Lcom/instabug/survey/ui/a;

    invoke-interface {v0, p1}, Lcom/instabug/survey/ui/a;->a(Lcom/instabug/survey/models/Survey;)V

    return-void
.end method

.method public g(Lcom/instabug/survey/models/Survey;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/survey/h/d;->b(Landroid/content/Context;)V

    .line 4
    iget-object v0, p0, Lcom/instabug/survey/ui/h/f;->b:Lcom/instabug/survey/ui/a;

    invoke-interface {v0, p1}, Lcom/instabug/survey/ui/a;->a(Lcom/instabug/survey/models/Survey;)V

    return-void
.end method

.method protected getLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/survey/R$layout;->instabug_dialog_popup_survey:I

    return v0
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "KEY_SURVEY_ARGUMENT"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/instabug/survey/models/Survey;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 6
    new-instance p2, Lcom/instabug/survey/ui/h/g;

    invoke-direct {p2, p0, p1}, Lcom/instabug/survey/ui/h/g;-><init>(Lcom/instabug/survey/ui/h/e;Lcom/instabug/survey/models/Survey;)V

    iput-object p2, p0, Lcom/instabug/survey/ui/h/f;->a:Lcom/instabug/survey/ui/h/g;

    .line 8
    invoke-virtual {p2}, Lcom/instabug/survey/ui/h/g;->h()V

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onAttach(Landroid/content/Context;)V

    .line 3
    :try_start_0
    check-cast p1, Lcom/instabug/survey/ui/a;

    iput-object p1, p0, Lcom/instabug/survey/ui/h/f;->b:Lcom/instabug/survey/ui/a;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 5
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Survey Activity must implement SurveyActivityCallback"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->setRetainInstance(Z)V

    return-void
.end method
