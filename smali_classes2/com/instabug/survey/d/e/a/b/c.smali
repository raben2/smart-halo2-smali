.class public Lcom/instabug/survey/d/e/a/b/c;
.super Lcom/instabug/survey/d/e/a/a;
.source "UpdateMessageFragment.java"

# interfaces
.implements Lcom/instabug/survey/d/e/a/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/survey/d/e/a/a<",
        "Lcom/instabug/survey/d/e/a/b/d;",
        ">;",
        "Lcom/instabug/survey/d/e/a/b/b;"
    }
.end annotation


# instance fields
.field private d:Lcom/instabug/survey/d/e/a/b/d;

.field private e:Lcom/instabug/survey/announcements/ui/activity/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Landroidx/appcompat/app/AlertDialog;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private g:Landroid/content/DialogInterface$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Landroid/content/DialogInterface$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/survey/d/e/a/a;-><init>()V

    return-void
.end method

.method public static b(Lcom/instabug/survey/d/c/c;)Lcom/instabug/survey/d/e/a/b/c;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "announcement_item"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3
    new-instance p0, Lcom/instabug/survey/d/e/a/b/c;

    invoke-direct {p0}, Lcom/instabug/survey/d/e/a/b/c;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 19
    iget-object v0, p0, Lcom/instabug/survey/d/e/a/a;->c:Lcom/instabug/survey/d/c/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/instabug/survey/d/c/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/instabug/survey/d/e/a/b/c;->e:Lcom/instabug/survey/announcements/ui/activity/a;

    if-nez v0, :cond_0

    goto :goto_1

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/instabug/survey/d/e/a/a;->c:Lcom/instabug/survey/d/c/a;

    invoke-virtual {v0}, Lcom/instabug/survey/d/c/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/d/c/c;

    .line 23
    invoke-virtual {v1}, Lcom/instabug/survey/d/c/c;->f()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 24
    invoke-virtual {v1}, Lcom/instabug/survey/d/c/c;->f()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/instabug/survey/d/c/c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/instabug/survey/d/e/a/b/c;->e:Lcom/instabug/survey/announcements/ui/activity/a;

    iget-object v1, p0, Lcom/instabug/survey/d/e/a/a;->c:Lcom/instabug/survey/d/c/a;

    invoke-interface {v0, v1}, Lcom/instabug/survey/announcements/ui/activity/a;->a(Lcom/instabug/survey/d/c/a;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instabug/survey/d/e/a/a;->c:Lcom/instabug/survey/d/c/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instabug/survey/d/e/a/b/c;->e:Lcom/instabug/survey/announcements/ui/activity/a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/instabug/survey/announcements/ui/activity/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/instabug/survey/d/e/a/b/c;->e:Lcom/instabug/survey/announcements/ui/activity/a;

    iget-object v0, p0, Lcom/instabug/survey/d/e/a/a;->c:Lcom/instabug/survey/d/c/a;

    invoke-interface {p1, v0}, Lcom/instabug/survey/announcements/ui/activity/a;->b(Lcom/instabug/survey/d/c/a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/instabug/survey/d/e/a/b/c$c;

    invoke-direct {v0, p0}, Lcom/instabug/survey/d/e/a/b/c$c;-><init>(Lcom/instabug/survey/d/e/a/b/c;)V

    iput-object v0, p0, Lcom/instabug/survey/d/e/a/b/c;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 7
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v7, p0, Lcom/instabug/survey/d/e/a/b/c;->g:Landroid/content/DialogInterface$OnClickListener;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v8}, Lcom/instabug/library/ui/custom/InstabugAlertDialog;->getAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/survey/d/e/a/b/c;->f:Landroidx/appcompat/app/AlertDialog;

    .line 17
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 18
    iget-object p1, p0, Lcom/instabug/survey/d/e/a/b/c;->f:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    new-instance v0, Lcom/instabug/survey/d/e/a/b/c$a;

    invoke-direct {v0, p0}, Lcom/instabug/survey/d/e/a/b/c$a;-><init>(Lcom/instabug/survey/d/e/a/b/c;)V

    iput-object v0, p0, Lcom/instabug/survey/d/e/a/b/c;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 12
    new-instance v0, Lcom/instabug/survey/d/e/a/b/c$b;

    invoke-direct {v0, p0}, Lcom/instabug/survey/d/e/a/b/c$b;-><init>(Lcom/instabug/survey/d/e/a/b/c;)V

    iput-object v0, p0, Lcom/instabug/survey/d/e/a/b/c;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 18
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v7, p0, Lcom/instabug/survey/d/e/a/b/c;->g:Landroid/content/DialogInterface$OnClickListener;

    iget-object v8, p0, Lcom/instabug/survey/d/e/a/b/c;->h:Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v8}, Lcom/instabug/library/ui/custom/InstabugAlertDialog;->getAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/survey/d/e/a/b/c;->f:Landroidx/appcompat/app/AlertDialog;

    .line 28
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 29
    iget-object p1, p0, Lcom/instabug/survey/d/e/a/b/c;->f:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/survey/d/e/a/a;->c:Lcom/instabug/survey/d/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/survey/d/e/a/b/c;->e:Lcom/instabug/survey/announcements/ui/activity/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/survey/h/d;->b(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lcom/instabug/survey/d/e/a/b/c;->e:Lcom/instabug/survey/announcements/ui/activity/a;

    iget-object v1, p0, Lcom/instabug/survey/d/e/a/a;->c:Lcom/instabug/survey/d/c/a;

    invoke-interface {v0, v1}, Lcom/instabug/survey/announcements/ui/activity/a;->b(Lcom/instabug/survey/d/c/a;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/d/e/a/a;->c:Lcom/instabug/survey/d/c/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/instabug/survey/d/e/a/a;->a:Lcom/instabug/survey/d/c/c;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/instabug/survey/d/e/a/b/c;->d:Lcom/instabug/survey/d/e/a/b/d;

    invoke-virtual {v2, v1, v0}, Lcom/instabug/survey/d/e/a/b/d;->a(Lcom/instabug/survey/d/c/c;Lcom/instabug/survey/d/c/a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected getLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/survey/R$layout;->instabug_dialog_version_update_announce:I

    return v0
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/instabug/survey/d/e/a/a;->initViews(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p2, Lcom/instabug/survey/R$id;->instabug_announcement_dialog_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/instabug/survey/d/e/a/a;->b:Landroid/widget/RelativeLayout;

    .line 3
    iget-object p1, p0, Lcom/instabug/survey/d/e/a/a;->a:Lcom/instabug/survey/d/c/c;

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p0, Lcom/instabug/survey/d/e/a/b/c;->d:Lcom/instabug/survey/d/e/a/b/d;

    invoke-virtual {p2, p1}, Lcom/instabug/survey/d/e/a/b/d;->d(Lcom/instabug/survey/d/c/c;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onAttach(Landroid/content/Context;)V

    .line 3
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;

    iput-object v0, p0, Lcom/instabug/survey/d/e/a/b/c;->e:Lcom/instabug/survey/announcements/ui/activity/a;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 5
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement AnnouncementActivity"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/survey/d/e/a/a;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->setRetainInstance(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "announcement_item"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/instabug/survey/d/c/c;

    iput-object p1, p0, Lcom/instabug/survey/d/e/a/a;->a:Lcom/instabug/survey/d/c/c;

    .line 6
    :cond_0
    new-instance p1, Lcom/instabug/survey/d/e/a/b/d;

    invoke-direct {p1, p0}, Lcom/instabug/survey/d/e/a/b/d;-><init>(Lcom/instabug/survey/d/e/a/b/b;)V

    iput-object p1, p0, Lcom/instabug/survey/d/e/a/b/c;->d:Lcom/instabug/survey/d/e/a/b/d;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/d/e/a/b/c;->f:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/survey/d/e/a/b/c;->f:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/instabug/survey/d/e/a/b/c;->f:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 4
    iget-object v0, p0, Lcom/instabug/survey/d/e/a/b/c;->f:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 5
    iput-object v1, p0, Lcom/instabug/survey/d/e/a/b/c;->g:Landroid/content/DialogInterface$OnClickListener;

    .line 6
    iput-object v1, p0, Lcom/instabug/survey/d/e/a/b/c;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 7
    iput-object v1, p0, Lcom/instabug/survey/d/e/a/b/c;->f:Landroidx/appcompat/app/AlertDialog;

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/instabug/survey/d/e/a/b/c;->d:Lcom/instabug/survey/d/e/a/b/d;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/instabug/library/core/ui/BasePresenter;->onDestroy()V

    .line 13
    :cond_2
    invoke-super {p0}, Lcom/instabug/survey/d/e/a/a;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/instabug/survey/d/e/a/b/c;->e:Lcom/instabug/survey/announcements/ui/activity/a;

    .line 2
    invoke-super {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onDetach()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/instabug/survey/d/e/a/a;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/d/e/a/b/c;->f:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/survey/d/e/a/b/c;->f:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method
