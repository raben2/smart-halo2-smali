.class public Lcom/instabug/survey/d/e/a/c/d;
.super Lcom/instabug/survey/d/e/a/a;
.source "WhatsNewFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/instabug/survey/d/e/a/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/survey/d/e/a/a<",
        "Lcom/instabug/survey/d/e/a/c/e;",
        ">;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/instabug/survey/d/e/a/c/b;"
    }
.end annotation


# instance fields
.field protected d:Lcom/instabug/survey/d/e/a/c/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected e:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private f:Landroid/widget/Button;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Lcom/instabug/survey/d/e/a/c/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/survey/d/e/a/a;-><init>()V

    return-void
.end method

.method public static b(Lcom/instabug/survey/d/c/c;)Lcom/instabug/survey/d/e/a/c/d;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "announcement_item"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3
    new-instance p0, Lcom/instabug/survey/d/e/a/c/d;

    invoke-direct {p0}, Lcom/instabug/survey/d/e/a/c/d;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/d/e/a/a;->c:Lcom/instabug/survey/d/c/a;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/instabug/survey/d/c/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
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

    .line 4
    invoke-virtual {v1}, Lcom/instabug/survey/d/c/c;->f()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/instabug/survey/d/c/c;->f()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/instabug/survey/d/c/c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/instabug/survey/d/e/a/c/d;->i:Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;

    if-nez v0, :cond_3

    return-void

    .line 9
    :cond_3
    iget-object v1, p0, Lcom/instabug/survey/d/e/a/a;->c:Lcom/instabug/survey/d/c/a;

    invoke-virtual {v0, v1}, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->b(Lcom/instabug/survey/d/c/a;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public a(Lcom/instabug/survey/d/c/c;)V
    .locals 3

    .line 10
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    new-instance v0, Lcom/instabug/survey/d/e/a/c/c;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/instabug/survey/d/e/a/c/c;-><init>(Landroid/app/Activity;Lcom/instabug/survey/d/c/c;)V

    iput-object v0, p0, Lcom/instabug/survey/d/e/a/c/d;->d:Lcom/instabug/survey/d/e/a/c/c;

    .line 13
    iget-object v0, p0, Lcom/instabug/survey/d/e/a/c/d;->e:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 14
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 15
    iget-object v0, p0, Lcom/instabug/survey/d/e/a/c/d;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/instabug/survey/d/e/a/c/d;->d:Lcom/instabug/survey/d/e/a/c/c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/instabug/survey/d/e/a/c/d;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 19
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/c;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/instabug/survey/d/c/c;->g()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Lcom/instabug/survey/d/e/a/c/d;->g:Landroid/widget/TextView;

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/instabug/survey/d/e/a/c/d;->f:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 24
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/c;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 25
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/c;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 26
    iget-object v0, p0, Lcom/instabug/survey/d/e/a/c/d;->f:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/instabug/survey/d/c/c;->f()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object p1, p0, Lcom/instabug/survey/d/e/a/c/d;->f:Landroid/widget/Button;

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 28
    iget-object p1, p0, Lcom/instabug/survey/d/e/a/c/d;->f:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/d/e/a/c/d;->i:Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/instabug/survey/d/e/a/a;->c:Lcom/instabug/survey/d/c/a;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, v1}, Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;->a(Lcom/instabug/survey/d/c/a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected getLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/survey/R$layout;->instabug_dialog_whats_new_announce:I

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

    .line 3
    sget p2, Lcom/instabug/survey/R$id;->instabug_announcement_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/instabug/survey/d/e/a/c/d;->g:Landroid/widget/TextView;

    .line 4
    sget p2, Lcom/instabug/survey/R$id;->instabug_announcement_features_grid_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/instabug/survey/d/e/a/c/d;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    sget p2, Lcom/instabug/survey/R$id;->instabug_btn_submit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/instabug/survey/d/e/a/c/d;->f:Landroid/widget/Button;

    .line 6
    sget p2, Lcom/instabug/survey/R$id;->instabug_announcement_dialog_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/instabug/survey/d/e/a/a;->b:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "announcement_item"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/instabug/survey/d/c/c;

    iput-object p1, p0, Lcom/instabug/survey/d/e/a/a;->a:Lcom/instabug/survey/d/c/c;

    .line 14
    :cond_1
    new-instance p1, Lcom/instabug/survey/d/e/a/c/e;

    invoke-direct {p1, p0}, Lcom/instabug/survey/d/e/a/c/e;-><init>(Lcom/instabug/survey/d/e/a/c/b;)V

    iput-object p1, p0, Lcom/instabug/survey/d/e/a/c/d;->h:Lcom/instabug/survey/d/e/a/c/e;

    .line 15
    iget-object p2, p0, Lcom/instabug/survey/d/e/a/a;->a:Lcom/instabug/survey/d/c/c;

    if-eqz p2, :cond_2

    .line 16
    invoke-virtual {p1, p2}, Lcom/instabug/survey/d/e/a/c/e;->a(Lcom/instabug/survey/d/c/c;)V

    :cond_2
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

    iput-object v0, p0, Lcom/instabug/survey/d/e/a/c/d;->i:Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;
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

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lcom/instabug/survey/R$id;->instabug_btn_submit:I

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/instabug/survey/d/e/a/c/d;->a()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/survey/d/e/a/a;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/instabug/survey/d/e/a/c/d;->i:Lcom/instabug/survey/announcements/ui/activity/AnnouncementActivity;

    .line 2
    invoke-super {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onDetach()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/d/e/a/c/d;->h:Lcom/instabug/survey/d/e/a/c/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/instabug/survey/d/e/a/c/e;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    return-void
.end method
