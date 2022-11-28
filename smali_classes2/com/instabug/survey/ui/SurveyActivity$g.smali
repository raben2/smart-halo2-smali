.class Lcom/instabug/survey/ui/SurveyActivity$g;
.super Ljava/lang/Object;
.source "SurveyActivity.java"

# interfaces
.implements Lcom/instabug/survey/ui/g/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/ui/SurveyActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/survey/ui/SurveyActivity;


# direct methods
.method constructor <init>(Lcom/instabug/survey/ui/SurveyActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/ui/SurveyActivity$g;->a:Lcom/instabug/survey/ui/SurveyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity$g;->a:Lcom/instabug/survey/ui/SurveyActivity;

    invoke-virtual {v0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 3
    instance-of v2, v1, Lcom/instabug/survey/ui/i/a;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcom/instabug/survey/ui/i/a;

    invoke-virtual {v1}, Lcom/instabug/survey/ui/i/a;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/instabug/survey/ui/i/a;->a()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity$g;->a:Lcom/instabug/survey/ui/SurveyActivity;

    invoke-virtual {v0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 3
    instance-of v2, v1, Lcom/instabug/survey/ui/i/b;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcom/instabug/survey/ui/i/b;

    invoke-virtual {v1}, Lcom/instabug/survey/ui/i/b;->f()V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity$g;->a:Lcom/instabug/survey/ui/SurveyActivity;

    invoke-virtual {v0}, Lcom/instabug/library/core/ui/BaseFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 3
    instance-of v2, v1, Lcom/instabug/survey/ui/i/b;

    if-eqz v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity$g;->a:Lcom/instabug/survey/ui/SurveyActivity;

    invoke-static {v0}, Lcom/instabug/survey/ui/SurveyActivity;->e(Lcom/instabug/survey/ui/SurveyActivity;)Lcom/instabug/library/core/ui/BaseContract$Presenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/instabug/survey/ui/SurveyActivity$g;->a:Lcom/instabug/survey/ui/SurveyActivity;

    invoke-static {v0}, Lcom/instabug/survey/ui/SurveyActivity;->f(Lcom/instabug/survey/ui/SurveyActivity;)Lcom/instabug/library/core/ui/BaseContract$Presenter;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/ui/d;

    sget-object v2, Lcom/instabug/survey/ui/f;->PRIMARY:Lcom/instabug/survey/ui/f;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/instabug/survey/ui/d;->a(Lcom/instabug/survey/ui/f;Z)V

    .line 7
    :cond_1
    check-cast v1, Lcom/instabug/survey/ui/i/b;

    invoke-virtual {v1}, Lcom/instabug/survey/ui/i/b;->e()V

    :cond_2
    return-void
.end method
