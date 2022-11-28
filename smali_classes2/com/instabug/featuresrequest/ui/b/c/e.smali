.class public abstract Lcom/instabug/featuresrequest/ui/b/c/e;
.super Lcom/instabug/library/core/ui/InstabugBaseFragment;
.source "FeaturesListFragment.java"

# interfaces
.implements Lcom/instabug/featuresrequest/ui/b/c/d;
.implements Lcom/instabug/featuresrequest/c/a;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/instabug/featuresrequest/c/b;
.implements Lcom/instabug/featuresrequest/ui/b/c/h;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ERADICATE_FIELD_NOT_INITIALIZED"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/InstabugBaseFragment<",
        "Lcom/instabug/featuresrequest/ui/b/c/f;",
        ">;",
        "Lcom/instabug/featuresrequest/ui/b/c/d;",
        "Lcom/instabug/featuresrequest/c/a;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/instabug/featuresrequest/c/b;",
        "Lcom/instabug/featuresrequest/ui/b/c/h;",
        "Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;"
    }
.end annotation


# instance fields
.field a:Landroid/widget/ListView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field b:Lcom/instabug/featuresrequest/ui/b/c/a;

.field private c:Landroid/view/ViewStub;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Landroid/view/ViewStub;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected e:Z

.field private f:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Landroid/widget/ProgressBar;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Z

.field private k:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->e:Z

    .line 28
    iput-boolean v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->j:Z

    .line 31
    iput-boolean v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->l:Z

    return-void
.end method

.method private J()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->a:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->f:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->j:Z

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 7
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    return-void

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/instabug/featuresrequest/R$layout;->ib_fr_pull_to_refresh_footer_view:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->f:Landroid/view/View;

    if-nez v0, :cond_2

    return-void

    .line 14
    :cond_2
    sget v1, Lcom/instabug/featuresrequest/R$id;->ib_loadmore_progressbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->g:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->f:Landroid/view/View;

    sget v1, Lcom/instabug/featuresrequest/R$id;->instabug_pbi_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->h:Landroid/widget/LinearLayout;

    .line 18
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->f:Landroid/view/View;

    sget v1, Lcom/instabug/featuresrequest/R$id;->image_instabug_logo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->i:Landroid/widget/ImageView;

    .line 19
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->g:Landroid/widget/ProgressBar;

    .line 20
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 21
    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 23
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 24
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast v0, Lcom/instabug/featuresrequest/ui/b/c/f;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/b/c/f;->b()V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->j:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FeaturesListFragment"

    const-string v2, "exception occurring while setting up the loadMore views"

    .line 28
    invoke-static {v1, v2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private K()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->a:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/instabug/featuresrequest/ui/b/c/e$a;

    invoke-direct {v1, p0}, Lcom/instabug/featuresrequest/ui/b/c/e$a;-><init>(Lcom/instabug/featuresrequest/ui/b/c/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method private L()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->a:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/instabug/featuresrequest/ui/b/c/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->l:Z

    return p0
.end method

.method static synthetic a(Lcom/instabug/featuresrequest/ui/b/c/e;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/instabug/featuresrequest/ui/b/c/e;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method

.method static synthetic c(Lcom/instabug/featuresrequest/ui/b/c/e;)Lcom/instabug/library/core/ui/BaseContract$Presenter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    return-object p0
.end method


# virtual methods
.method public C()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->g:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public G()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->e:Z

    return v0
.end method

.method public abstract I()Lcom/instabug/featuresrequest/ui/b/c/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public a()V
    .locals 3

    .line 7
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/instabug/featuresrequest/R$id;->instabug_fragment_container:I

    new-instance v2, Lcom/instabug/featuresrequest/ui/e/c;

    invoke-direct {v2}, Lcom/instabug/featuresrequest/ui/e/c;-><init>()V

    .line 11
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "search_features"

    .line 12
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 6
    check-cast v0, Lcom/instabug/featuresrequest/ui/b/c/f;

    invoke-virtual {v0, p1}, Lcom/instabug/featuresrequest/ui/b/c/f;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/instabug/featuresrequest/d/b;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 4
    check-cast v0, Lcom/instabug/featuresrequest/ui/b/c/f;

    invoke-virtual {v0, p1}, Lcom/instabug/featuresrequest/ui/b/c/f;->a(Lcom/instabug/featuresrequest/d/b;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 1

    .line 14
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->a:Landroid/widget/ListView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/b/c/e;->K()V

    .line 19
    iget-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz p1, :cond_1

    .line 20
    check-cast p1, Lcom/instabug/featuresrequest/ui/b/c/f;

    invoke-virtual {p1}, Lcom/instabug/featuresrequest/ui/b/c/f;->j()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->c:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->k:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    :cond_0
    return-void
.end method

.method public c(Lcom/instabug/featuresrequest/d/b;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/instabug/featuresrequest/ui/b/c/f;

    invoke-virtual {v0, p1}, Lcom/instabug/featuresrequest/ui/b/c/f;->b(Lcom/instabug/featuresrequest/d/b;)V

    :cond_0
    return-void
.end method

.method public d(Lcom/instabug/featuresrequest/d/b;)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/instabug/featuresrequest/R$id;->instabug_fragment_container:I

    .line 7
    invoke-static {p1, p0}, Lcom/instabug/featuresrequest/ui/c/a;->a(Lcom/instabug/featuresrequest/d/b;Lcom/instabug/featuresrequest/ui/b/c/h;)Lcom/instabug/featuresrequest/ui/c/a;

    move-result-object p1

    .line 8
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const-string v0, "feature_requests_details"

    .line 10
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getViewContext()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getViewContext()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->b:Lcom/instabug/featuresrequest/ui/b/c/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected getLayout()I
    .locals 1

    .line 1
    sget v0, Lcom/instabug/featuresrequest/R$layout;->ib_fr_features_list_fragment:I

    return v0
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->g:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hidePoweredByFooter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/instabug/featuresrequest/R$string;->feature_requests_error_state_sub_title:I

    invoke-virtual {p0, v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instabug/featuresrequest/ui/b/c/e;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected initViews(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    sget p1, Lcom/instabug/featuresrequest/R$id;->ib_empty_state_stub:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->c:Landroid/view/ViewStub;

    .line 2
    sget p1, Lcom/instabug/featuresrequest/R$id;->error_state_stub:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->d:Landroid/view/ViewStub;

    .line 3
    sget p1, Lcom/instabug/featuresrequest/R$id;->features_request_list:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->a:Landroid/widget/ListView;

    .line 4
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/b/c/e;->K()V

    .line 5
    sget p1, Lcom/instabug/featuresrequest/R$id;->swipeRefreshLayout:I

    invoke-virtual {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->k:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [I

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 9
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->k:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 10
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "my_posts"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->e:Z

    :cond_1
    if-eqz p2, :cond_5

    .line 14
    iget-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-nez p1, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    iput-boolean v2, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->j:Z

    const-string p1, "empty_state"

    .line 18
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast p1, Lcom/instabug/featuresrequest/ui/b/c/f;

    .line 19
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/ui/b/c/f;->a()I

    move-result p1

    if-nez p1, :cond_3

    .line 20
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/ui/b/c/e;->n()V

    :cond_3
    const-string p1, "error_state"

    .line 22
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast p1, Lcom/instabug/featuresrequest/ui/b/c/f;

    .line 23
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/ui/b/c/f;->a()I

    move-result p1

    if-nez p1, :cond_4

    .line 24
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/ui/b/c/e;->w()V

    .line 26
    :cond_4
    iget-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast p1, Lcom/instabug/featuresrequest/ui/b/c/f;

    invoke-virtual {p1}, Lcom/instabug/featuresrequest/ui/b/c/f;->a()I

    move-result p1

    if-lez p1, :cond_6

    .line 27
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/b/c/e;->J()V

    goto :goto_1

    .line 28
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/ui/b/c/e;->I()Lcom/instabug/featuresrequest/ui/b/c/f;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    .line 44
    :cond_6
    :goto_1
    new-instance p1, Lcom/instabug/featuresrequest/ui/b/c/a;

    iget-object p2, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast p2, Lcom/instabug/featuresrequest/ui/b/c/f;

    invoke-direct {p1, p2, p0}, Lcom/instabug/featuresrequest/ui/b/c/a;-><init>(Lcom/instabug/featuresrequest/ui/b/c/f;Lcom/instabug/featuresrequest/c/a;)V

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->b:Lcom/instabug/featuresrequest/ui/b/c/a;

    .line 46
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x12

    if-ge p1, p2, :cond_7

    .line 47
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/b/c/e;->J()V

    .line 49
    :cond_7
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->a:Landroid/widget/ListView;

    if-eqz p1, :cond_8

    .line 50
    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->b:Lcom/instabug/featuresrequest/ui/b/c/a;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_8
    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->a:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/b/c/e;->K()V

    .line 5
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_1

    .line 6
    check-cast v0, Lcom/instabug/featuresrequest/ui/b/c/f;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/b/c/f;->j()V

    :cond_1
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->d:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->c:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->c:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 4
    sget v1, Lcom/instabug/featuresrequest/R$id;->ib_empty_state_action:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 5
    sget v2, Lcom/instabug/featuresrequest/R$id;->ib_empty_state_icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 6
    sget v2, Lcom/instabug/featuresrequest/R$drawable;->ibg_fr_ic_features_empty_state:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result v0

    invoke-static {v1, v0}, Lcom/instabug/featuresrequest/g/b;->a(Landroid/view/View;I)V

    .line 8
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->c:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    sget v1, Lcom/instabug/featuresrequest/R$id;->ib_empty_state_action:I

    if-ne p1, v1, :cond_1

    .line 5
    check-cast v0, Lcom/instabug/featuresrequest/ui/b/c/f;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/b/c/f;->d()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->d:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewStub;->getInflatedId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    check-cast p1, Lcom/instabug/featuresrequest/ui/b/c/f;

    invoke-virtual {p1}, Lcom/instabug/featuresrequest/ui/b/c/f;->e()V

    :cond_2
    :goto_0
    return-void
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

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/instabug/featuresrequest/ui/b/c/f;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/b/c/f;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/b/c/e;->K()V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcom/instabug/featuresrequest/ui/b/c/f;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/b/c/f;->g()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->c:Landroid/view/ViewStub;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v3, "empty_state"

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->d:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    const-string v3, "error_state"

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public showPoweredByFooter()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->i:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/InstabugColorTheme;->InstabugColorThemeDark:Lcom/instabug/library/InstabugColorTheme;

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->i:Landroid/widget/ImageView;

    sget v1, Lcom/instabug/featuresrequest/R$drawable;->ibg_core_ic_instabug_logo:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->i:Landroid/widget/ImageView;

    const-string v1, "#FFFFFF"

    .line 7
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->i:Landroid/widget/ImageView;

    sget v1, Lcom/instabug/featuresrequest/R$drawable;->ibg_core_ic_instabug_logo:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->i:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/instabug/featuresrequest/R$color;->ib_fr_pbi_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->b:Lcom/instabug/featuresrequest/ui/b/c/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public u()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/ui/b/c/e;->C()V

    return-void
.end method

.method public w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->d:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->d:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->d:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public z()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->a:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/b/c/e;->J()V

    .line 3
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/ui/b/c/e;->f()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/core/ui/InstabugBaseFragment;->presenter:Lcom/instabug/library/core/ui/BaseContract$Presenter;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->g:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_2

    .line 6
    check-cast v0, Lcom/instabug/featuresrequest/ui/b/c/f;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/b/c/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/b/c/e;->L()V

    .line 10
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->g:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 13
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/instabug/featuresrequest/ui/b/c/e;->l:Z

    return-void
.end method
