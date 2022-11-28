.class public Lcom/instabug/bug/view/i/c/f;
.super Lcom/instabug/library/core/ui/InstabugBaseFragment;
.source "VisualUserStepsListFragment.java"

# interfaces
.implements Lcom/instabug/bug/view/i/c/e;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ERADICATE_FIELD_NOT_INITIALIZED"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/InstabugBaseFragment<",
        "Lcom/instabug/bug/view/i/c/g;",
        ">;",
        "Lcom/instabug/bug/view/i/c/e;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private b:Lcom/instabug/bug/view/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lcom/instabug/bug/view/i/c/c;

.field private e:Landroidx/recyclerview/widget/RecyclerView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;-><init>()V

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lcom/instabug/bug/view/i/c/f;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/instabug/bug/view/i/c/f;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "title"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p0, Lcom/instabug/bug/view/i/c/f;

    invoke-direct {p0}, Lcom/instabug/bug/view/i/c/f;-><init>()V

    .line 5
    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private e()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->REPRO_STEPS_LIST_DESCRIPTION:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    sget v2, Lcom/instabug/bug/R$string;->IBGReproStepsListHeader:I

    invoke-static {v0, v1, v2}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Landroid/content/Context;Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->REPRO_STEPS_LIST_EMPTY_STATE_DESCRIPTION:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    sget v2, Lcom/instabug/bug/R$string;->IBGReproStepsListEmptyStateLabel:I

    invoke-static {v0, v1, v2}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Landroid/content/Context;Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private l()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->REPRO_STEPS_PROGRESS_DIALOG_BODY:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    sget v2, Lcom/instabug/bug/R$string;->instabug_str_dialog_message_preparing:I

    invoke-static {v0, v1, v2}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Landroid/content/Context;Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private r()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeLight:Lcom/instabug/library/InstabugColorTheme;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/f;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/instabug/bug/R$drawable;->ibg_bug_vus_empty_view_background_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/f;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/instabug/bug/R$drawable;->ibg_bug_vus_empty_view_background_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/f;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/f;->h:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/f;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public a(ILcom/instabug/bug/model/c;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast v0, Lcom/instabug/bug/view/i/c/g;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/instabug/bug/view/i/c/g;->a(Landroid/content/Context;ILcom/instabug/bug/model/c;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/bug/model/c;",
            ">;)V"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/f;->g:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/instabug/bug/view/i/c/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/instabug/bug/view/i/c/f;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/instabug/bug/view/i/c/f;->d:Lcom/instabug/bug/view/i/c/c;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 15
    iget-object p1, p0, Lcom/instabug/bug/view/i/c/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/instabug/bug/view/i/c/f;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/instabug/bug/view/i/c/f;->f:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/instabug/bug/view/i/c/f;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-direct {p0}, Lcom/instabug/bug/view/i/c/f;->r()V

    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/f;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/f;->d:Lcom/instabug/bug/view/i/c/c;

    invoke-virtual {v0, p1}, Lcom/instabug/bug/view/i/c/c;->a(Ljava/util/ArrayList;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "_e"

    const-string v1, ""

    .line 1
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/internal/storage/DiskUtils;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/bug/view/i/c/f;->b:Lcom/instabug/bug/view/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/instabug/bug/view/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected getLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/bug/R$layout;->ibg_bug_fragment_repro_steps_list:I

    return v0
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget p1, Lcom/instabug/bug/R$id;->instabug_vus_list_header:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/instabug/bug/view/i/c/f;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_0
    sget p1, Lcom/instabug/bug/R$id;->instabug_vus_empty_label:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/instabug/bug/view/i/c/f;->f:Landroid/widget/TextView;

    .line 6
    sget p1, Lcom/instabug/bug/R$id;->instabug_vus_list:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/instabug/bug/view/i/c/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    sget p1, Lcom/instabug/bug/R$id;->instabug_vus_list_container:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/instabug/bug/view/i/c/f;->g:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    const/4 p2, 0x4

    .line 9
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    :cond_1
    new-instance p1, Lcom/instabug/bug/view/i/c/c;

    invoke-direct {p1, p0}, Lcom/instabug/bug/view/i/c/c;-><init>(Lcom/instabug/bug/view/i/c/e;)V

    iput-object p1, p0, Lcom/instabug/bug/view/i/c/f;->d:Lcom/instabug/bug/view/i/c/c;

    .line 12
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 13
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 14
    iget-object p2, p0, Lcom/instabug/bug/view/i/c/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p2, :cond_2

    return-void

    .line 18
    :cond_2
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 19
    iget-object p2, p0, Lcom/instabug/bug/view/i/c/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/instabug/bug/view/i/c/f;->d:Lcom/instabug/bug/view/i/c/c;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 20
    new-instance p2, Landroidx/recyclerview/widget/DividerItemDecoration;

    iget-object v0, p0, Lcom/instabug/bug/view/i/c/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    invoke-direct {p2, v0, p1}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 22
    iget-object p1, p0, Lcom/instabug/bug/view/i/c/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 23
    new-instance p1, Lcom/instabug/bug/view/i/c/g;

    invoke-direct {p1, p0}, Lcom/instabug/bug/view/i/c/g;-><init>(Lcom/instabug/bug/view/i/c/e;)V

    iput-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    .line 24
    invoke-virtual {p0}, Lcom/instabug/bug/view/i/c/f;->showPreparingDialog()V

    .line 25
    iget-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast p1, Lcom/instabug/bug/view/i/c/g;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/instabug/bug/view/i/c/g;->b(Landroid/content/Context;)V

    :cond_3
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/instabug/bug/view/b;

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/instabug/bug/view/b;

    iput-object p1, p0, Lcom/instabug/bug/view/i/c/f;->b:Lcom/instabug/bug/view/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Must implement BugReportingActivityCallBack"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->setHasOptionsMenu(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/instabug/bug/view/i/c/f;->a:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lcom/instabug/bug/view/i/c/f;->b:Lcom/instabug/bug/view/b;

    if-eqz p1, :cond_3

    .line 9
    invoke-interface {p1}, Lcom/instabug/bug/view/b;->l()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/bug/view/i/c/f;->c:Ljava/lang/String;

    .line 10
    iget-object p1, p0, Lcom/instabug/bug/view/i/c/f;->a:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/f;->b:Lcom/instabug/bug/view/b;

    invoke-interface {v0, p1}, Lcom/instabug/bug/view/b;->a(Ljava/lang/String;)V

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/instabug/bug/view/i/c/f;->b:Lcom/instabug/bug/view/b;

    invoke-interface {p1}, Lcom/instabug/bug/view/b;->s()V

    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcom/instabug/bug/view/i/c/g;

    invoke-virtual {v0}, Lcom/instabug/bug/view/i/c/g;->l()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/f;->b:Lcom/instabug/bug/view/b;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/instabug/bug/view/b;->e()V

    .line 6
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/f;->b:Lcom/instabug/bug/view/b;

    iget-object v1, p0, Lcom/instabug/bug/view/i/c/f;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/instabug/bug/view/b;->a(Ljava/lang/String;)V

    .line 8
    :cond_1
    invoke-super {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onDestroyView()V

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/f;->h:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/f;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/instabug/bug/view/i/c/f;->h:Landroid/app/ProgressDialog;

    .line 8
    iput-object v0, p0, Lcom/instabug/bug/view/i/c/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    iput-object v0, p0, Lcom/instabug/bug/view/i/c/f;->g:Landroid/widget/LinearLayout;

    .line 10
    iput-object v0, p0, Lcom/instabug/bug/view/i/c/f;->f:Landroid/widget/TextView;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public showPreparingDialog()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/f;->h:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/f;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instabug/bug/view/i/c/f;->h:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 9
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/f;->h:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Lcom/instabug/bug/view/i/c/f;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/instabug/bug/view/i/c/f;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method
