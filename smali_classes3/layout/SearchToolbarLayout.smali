.class public Llayout/SearchToolbarLayout;
.super Landroid/widget/LinearLayout;
.source "SearchToolbarLayout.java"


# instance fields
.field private onQueryTextListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

.field private querySource:Lio/reactivex/processors/PublishProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/PublishProcessor<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private searchView:Landroidx/appcompat/widget/SearchView;

.field private shouldSkipNextSearchResult:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 107
    new-instance v0, Llayout/SearchToolbarLayout$1;

    invoke-direct {v0, p0}, Llayout/SearchToolbarLayout$1;-><init>(Llayout/SearchToolbarLayout;)V

    iput-object v0, p0, Llayout/SearchToolbarLayout;->onQueryTextListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p0, p1, v0, v1}, Llayout/SearchToolbarLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    new-instance v0, Llayout/SearchToolbarLayout$1;

    invoke-direct {v0, p0}, Llayout/SearchToolbarLayout$1;-><init>(Llayout/SearchToolbarLayout;)V

    iput-object v0, p0, Llayout/SearchToolbarLayout;->onQueryTextListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, p1, p2, v0}, Llayout/SearchToolbarLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    new-instance v0, Llayout/SearchToolbarLayout$1;

    invoke-direct {v0, p0}, Llayout/SearchToolbarLayout$1;-><init>(Llayout/SearchToolbarLayout;)V

    iput-object v0, p0, Llayout/SearchToolbarLayout;->onQueryTextListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Llayout/SearchToolbarLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Llayout/SearchToolbarLayout;)Lio/reactivex/processors/PublishProcessor;
    .locals 0

    .line 20
    iget-object p0, p0, Llayout/SearchToolbarLayout;->querySource:Lio/reactivex/processors/PublishProcessor;

    return-object p0
.end method

.method static synthetic access$100(Llayout/SearchToolbarLayout;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Llayout/SearchToolbarLayout;->shouldSkipNextSearchResult:Z

    return p0
.end method

.method static synthetic access$102(Llayout/SearchToolbarLayout;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Llayout/SearchToolbarLayout;->shouldSkipNextSearchResult:Z

    return p1
.end method

.method private updateLayout()V
    .locals 0

    .line 127
    invoke-virtual {p0}, Llayout/SearchToolbarLayout;->requestLayout()V

    .line 128
    invoke-virtual {p0}, Llayout/SearchToolbarLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public clearSearchViewText()V
    .locals 1

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Llayout/SearchToolbarLayout;->shouldSkipNextSearchResult:Z

    .line 95
    iget-object v0, p0, Llayout/SearchToolbarLayout;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    return-void
.end method

.method public getQuerySource()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Llayout/SearchToolbarLayout;->querySource:Lio/reactivex/processors/PublishProcessor;

    return-object v0
.end method

.method public handleFinishInflate()V
    .locals 3

    const v0, 0x7f0a0476

    .line 100
    invoke-virtual {p0, v0}, Llayout/SearchToolbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView;

    iput-object v0, p0, Llayout/SearchToolbarLayout;->searchView:Landroidx/appcompat/widget/SearchView;

    .line 101
    iget-object v0, p0, Llayout/SearchToolbarLayout;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p0}, Llayout/SearchToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110352

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Llayout/SearchToolbarLayout;->searchView:Landroidx/appcompat/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 103
    iget-object v0, p0, Llayout/SearchToolbarLayout;->searchView:Landroidx/appcompat/widget/SearchView;

    iget-object v1, p0, Llayout/SearchToolbarLayout;->onQueryTextListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 104
    invoke-virtual {p0}, Llayout/SearchToolbarLayout;->updateLayoutParams()V

    return-void
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    const p2, 0x7f0d00d1

    .line 42
    invoke-static {p1, p2, p0}, Llayout/SearchToolbarLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    invoke-static {}, Lio/reactivex/processors/PublishProcessor;->create()Lio/reactivex/processors/PublishProcessor;

    move-result-object p1

    iput-object p1, p0, Llayout/SearchToolbarLayout;->querySource:Lio/reactivex/processors/PublishProcessor;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 48
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 49
    invoke-virtual {p0}, Llayout/SearchToolbarLayout;->handleFinishInflate()V

    return-void
.end method

.method public setFocus(Z)V
    .locals 1

    .line 75
    iget-object v0, p0, Llayout/SearchToolbarLayout;->searchView:Landroidx/appcompat/widget/SearchView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->requestFocus()Z

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSearchViewText(Ljava/lang/String;)V
    .locals 2

    .line 85
    iget-object v0, p0, Llayout/SearchToolbarLayout;->searchView:Landroidx/appcompat/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setSearchViewTextNoEvent(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Llayout/SearchToolbarLayout;->shouldSkipNextSearchResult:Z

    .line 90
    invoke-virtual {p0, p1}, Llayout/SearchToolbarLayout;->setSearchViewText(Ljava/lang/String;)V

    return-void
.end method

.method public updateLayoutParams()V
    .locals 4

    .line 53
    invoke-virtual {p0}, Llayout/SearchToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHDimensionsHelper;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 54
    invoke-virtual {p0}, Llayout/SearchToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbike/smarthalo/app/helpers/SHDimensionsHelper;->getActionBarSize(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v1, v0

    .line 56
    invoke-virtual {p0}, Llayout/SearchToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070105

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 57
    invoke-virtual {p0, v2}, Llayout/SearchToolbarLayout;->setElevation(F)V

    .line 59
    invoke-virtual {p0}, Llayout/SearchToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060128

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p0, v2}, Llayout/SearchToolbarLayout;->setBackgroundColor(I)V

    .line 60
    invoke-virtual {p0, v1}, Llayout/SearchToolbarLayout;->setMinimumHeight(I)V

    const/4 v2, 0x0

    .line 61
    invoke-virtual {p0, v2, v0, v2, v2}, Llayout/SearchToolbarLayout;->setPadding(IIII)V

    .line 63
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 64
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setLayoutDirection(I)V

    .line 65
    invoke-virtual {p0, v0}, Llayout/SearchToolbarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-direct {p0}, Llayout/SearchToolbarLayout;->updateLayout()V

    return-void
.end method
