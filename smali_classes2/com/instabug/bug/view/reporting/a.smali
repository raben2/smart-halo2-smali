.class public Lcom/instabug/bug/view/reporting/a;
.super Lcom/instabug/library/core/ui/BasePresenter;
.source "BaseReportingContainerPresenter.java"

# interfaces
.implements Lcom/instabug/bug/view/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/BasePresenter<",
        "Lcom/instabug/bug/view/d;",
        ">;",
        "Lcom/instabug/bug/view/c;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/instabug/bug/view/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/core/ui/BasePresenter;-><init>(Lcom/instabug/library/core/ui/BaseContract$View;)V

    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    const-string v1, "ask a question"

    invoke-virtual {v0, v1}, Lcom/instabug/bug/model/a;->e(Ljava/lang/String;)Lcom/instabug/bug/model/a;

    .line 5
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/model/a;->f()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/model/a;->m()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v2, Lcom/instabug/library/model/Attachment$Type;->MAIN_SCREENSHOT:Lcom/instabug/library/model/Attachment$Type;

    invoke-virtual {v1, v0, v2}, Lcom/instabug/bug/model/a;->a(Landroid/net/Uri;Lcom/instabug/library/model/Attachment$Type;)Lcom/instabug/bug/model/a;

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/bug/view/d;

    if-eqz v0, :cond_2

    .line 16
    invoke-interface {v0}, Lcom/instabug/bug/view/d;->w()V

    .line 19
    :cond_2
    invoke-virtual {p0}, Lcom/instabug/bug/view/reporting/a;->l()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/bug/view/d;

    if-eqz v0, :cond_1

    const/16 v1, 0xa7

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 18
    :pswitch_0
    invoke-direct {p0}, Lcom/instabug/bug/view/reporting/a;->n()V

    goto :goto_0

    .line 19
    :pswitch_1
    invoke-interface {v0}, Lcom/instabug/bug/view/d;->o()V

    goto :goto_0

    .line 20
    :pswitch_2
    invoke-interface {v0}, Lcom/instabug/bug/view/d;->x()V

    goto :goto_0

    .line 28
    :cond_0
    invoke-interface {v0}, Lcom/instabug/bug/view/d;->k()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/bug/view/d;

    if-eqz v0, :cond_1

    .line 4
    sget-object v1, Lcom/instabug/library/Feature;->WHITE_LABELING:Lcom/instabug/library/Feature;

    invoke-static {v1}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v1

    sget-object v2, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Lcom/instabug/bug/view/d;->b(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 8
    invoke-interface {v0, v1}, Lcom/instabug/bug/view/d;->b(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public m()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/bug/view/d;

    if-eqz v0, :cond_8

    .line 3
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 4
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/bug/model/a;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0xb6a147b

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_3

    const v4, 0x17e74

    if-eq v3, v4, :cond_2

    const v4, 0xf1eec4f

    if-eq v3, v4, :cond_1

    const v4, 0x609fc0cc

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "ask a question"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const-string v3, "not-available"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x3

    goto :goto_0

    :cond_2
    const-string v3, "bug"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const-string v3, "feedback"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    :goto_0
    if-eqz v2, :cond_7

    if-eq v2, v6, :cond_6

    if-eq v2, v5, :cond_5

    goto :goto_1

    .line 13
    :cond_5
    invoke-interface {v0}, Lcom/instabug/bug/view/d;->w()V

    goto :goto_1

    .line 14
    :cond_6
    invoke-interface {v0}, Lcom/instabug/bug/view/d;->f()V

    goto :goto_1

    .line 15
    :cond_7
    invoke-interface {v0}, Lcom/instabug/bug/view/d;->u()V

    :cond_8
    :goto_1
    return-void
.end method
