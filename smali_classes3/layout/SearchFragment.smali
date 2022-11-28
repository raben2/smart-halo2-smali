.class public Llayout/SearchFragment;
.super Landroidx/fragment/app/Fragment;
.source "SearchFragment.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$View;


# static fields
.field public static final RESET_SEARCH_VIEW:Ljava/lang/String; = "RESET_SEARCH_VIEW"

.field private static final TAG:Ljava/lang/String; = "SearchFragment"


# instance fields
.field private adapter:Llayout/adapters/SearchResultsAdapter;

.field analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private consumer:Llayout/ViewContracts/SearchConsumerContract;

.field private favouritesController:Lbike/smarthalo/app/coordinators/FavouritesController;

.field geocodingManager:Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private noResultsDivider:Landroid/view/View;

.field private noResultsText:Landroid/widget/TextView;

.field private onClickGpxBtnListener:Landroid/view/View$OnClickListener;

.field private onSearchResultItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onTouchListListener:Landroid/view/View$OnTouchListener;

.field private presenter:Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$Presenter;

.field private searchResultsListView:Landroid/widget/ListView;

.field private searchToolbarLayout:Llayout/SearchToolbarLayout;

.field private shouldResetView:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 119
    new-instance v0, Llayout/SearchFragment$1;

    invoke-direct {v0, p0}, Llayout/SearchFragment$1;-><init>(Llayout/SearchFragment;)V

    iput-object v0, p0, Llayout/SearchFragment;->onTouchListListener:Landroid/view/View$OnTouchListener;

    .line 129
    new-instance v0, Llayout/SearchFragment$2;

    invoke-direct {v0, p0}, Llayout/SearchFragment$2;-><init>(Llayout/SearchFragment;)V

    iput-object v0, p0, Llayout/SearchFragment;->onClickGpxBtnListener:Landroid/view/View$OnClickListener;

    .line 138
    new-instance v0, Llayout/SearchFragment$3;

    invoke-direct {v0, p0}, Llayout/SearchFragment$3;-><init>(Llayout/SearchFragment;)V

    iput-object v0, p0, Llayout/SearchFragment;->onSearchResultItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Llayout/SearchFragment;)Landroid/widget/ListView;
    .locals 0

    .line 36
    iget-object p0, p0, Llayout/SearchFragment;->searchResultsListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$100(Llayout/SearchFragment;)Llayout/SearchToolbarLayout;
    .locals 0

    .line 36
    iget-object p0, p0, Llayout/SearchFragment;->searchToolbarLayout:Llayout/SearchToolbarLayout;

    return-object p0
.end method

.method static synthetic access$200(Llayout/SearchFragment;)Llayout/ViewContracts/SearchConsumerContract;
    .locals 0

    .line 36
    iget-object p0, p0, Llayout/SearchFragment;->consumer:Llayout/ViewContracts/SearchConsumerContract;

    return-object p0
.end method

.method static synthetic access$300(Llayout/SearchFragment;Lbike/smarthalo/app/models/SHLocation;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Llayout/SearchFragment;->sendSearchResultAnalyticsEvent(Lbike/smarthalo/app/models/SHLocation;)V

    return-void
.end method

.method static synthetic access$400(Llayout/SearchFragment;)Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$Presenter;
    .locals 0

    .line 36
    iget-object p0, p0, Llayout/SearchFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$Presenter;

    return-object p0
.end method

.method public static getClearSearchBundle(Z)Landroid/os/Bundle;
    .locals 2

    .line 245
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "RESET_SEARCH_VIEW"

    .line 246
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static synthetic lambda$onActivityCreated$0(Llayout/SearchFragment;Landroid/view/View;)V
    .locals 0

    .line 79
    invoke-virtual {p0}, Llayout/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method private sendSearchResultAnalyticsEvent(Lbike/smarthalo/app/models/SHLocation;)V
    .locals 1

    .line 165
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$type()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    goto :goto_0

    .line 172
    :pswitch_1
    sget-object p1, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;->Search:Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

    goto :goto_0

    .line 175
    :pswitch_2
    sget-object p1, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;->History:Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

    goto :goto_0

    .line 169
    :pswitch_3
    sget-object p1, Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;->Favourites:Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;

    :goto_0
    if-eqz p1, :cond_0

    .line 180
    iget-object v0, p0, Llayout/SearchFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-static {p1}, Lbike/smarthalo/app/analytics/navigation/AnalyticsNavigation;->getDestinationSelectedEvent(Lbike/smarthalo/app/analytics/navigation/DestinationSelectionType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object p1

    invoke-interface {v0, p1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private setNoResultsVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 259
    :goto_0
    iget-object v0, p0, Llayout/SearchFragment;->noResultsDivider:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Llayout/SearchFragment;->noResultsText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getCurrentQuery()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Llayout/SearchFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$Presenter;->getCurrentQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 76
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Llayout/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0a0087

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 79
    new-instance v0, Llayout/-$$Lambda$SearchFragment$qnQlLzpuvQ0tbGjohK0HuNqIBaQ;

    invoke-direct {v0, p0}, Llayout/-$$Lambda$SearchFragment$qnQlLzpuvQ0tbGjohK0HuNqIBaQ;-><init>(Llayout/SearchFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {p0}, Llayout/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getGeocodingManagerComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/GeocodingManagerComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lbike/smarthalo/app/dependencyManagement/components/GeocodingManagerComponent;->inject(Llayout/SearchFragment;)V

    .line 82
    invoke-virtual {p0}, Llayout/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Llayout/SearchFragment;->geocodingManager:Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;

    invoke-static {p1, p0, v0}, Lbike/smarthalo/app/presenters/SearchPresenter;->buildSearchPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$View;Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;)Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$Presenter;

    move-result-object p1

    iput-object p1, p0, Llayout/SearchFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$Presenter;

    .line 83
    iget-object p1, p0, Llayout/SearchFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$Presenter;

    iget-object v0, p0, Llayout/SearchFragment;->favouritesController:Lbike/smarthalo/app/coordinators/FavouritesController;

    invoke-interface {p1, v0}, Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$Presenter;->setFavouritesController(Lbike/smarthalo/app/coordinators/FavouritesController;)V

    .line 85
    invoke-virtual {p0}, Llayout/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0a0475

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Llayout/SearchToolbarLayout;

    iput-object p1, p0, Llayout/SearchFragment;->searchToolbarLayout:Llayout/SearchToolbarLayout;

    .line 87
    invoke-virtual {p0}, Llayout/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0a0471

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Llayout/SearchFragment;->searchResultsListView:Landroid/widget/ListView;

    .line 88
    iget-object p1, p0, Llayout/SearchFragment;->searchResultsListView:Landroid/widget/ListView;

    iget-object v0, p0, Llayout/SearchFragment;->onTouchListListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 89
    new-instance p1, Llayout/adapters/SearchResultsAdapter;

    invoke-virtual {p0}, Llayout/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Llayout/adapters/SearchResultsAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Llayout/SearchFragment;->adapter:Llayout/adapters/SearchResultsAdapter;

    .line 90
    iget-object p1, p0, Llayout/SearchFragment;->searchResultsListView:Landroid/widget/ListView;

    iget-object v0, p0, Llayout/SearchFragment;->adapter:Llayout/adapters/SearchResultsAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    iget-object p1, p0, Llayout/SearchFragment;->searchResultsListView:Landroid/widget/ListView;

    iget-object v0, p0, Llayout/SearchFragment;->onSearchResultItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 93
    invoke-virtual {p0}, Llayout/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f0d0058

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v2, 0x7f0a0250

    .line 95
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Llayout/SearchResultItemLayout;

    .line 96
    iget-object v3, p0, Llayout/SearchFragment;->onClickGpxBtnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Llayout/SearchResultItemLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {v2}, Llayout/SearchResultItemLayout;->setDescriptionGone()V

    .line 99
    iget-object v2, p0, Llayout/SearchFragment;->searchResultsListView:Landroid/widget/ListView;

    invoke-virtual {v2, p1, v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 101
    invoke-virtual {p0}, Llayout/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0a046e

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Llayout/SearchFragment;->noResultsDivider:Landroid/view/View;

    .line 102
    invoke-virtual {p0}, Llayout/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0a046f

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llayout/SearchFragment;->noResultsText:Landroid/widget/TextView;

    .line 104
    invoke-virtual {p0}, Llayout/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "RESET_SEARCH_VIEW"

    .line 106
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Llayout/SearchFragment;->shouldResetView:Z

    .line 107
    iget-boolean p1, p0, Llayout/SearchFragment;->shouldResetView:Z

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p0}, Llayout/SearchFragment;->resetSearchResults()V

    .line 112
    :cond_0
    iget-object p1, p0, Llayout/SearchFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$Presenter;

    iget-object v0, p0, Llayout/SearchFragment;->searchToolbarLayout:Llayout/SearchToolbarLayout;

    invoke-virtual {v0}, Llayout/SearchToolbarLayout;->getQuerySource()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-interface {p1, v0}, Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$Presenter;->setQuerySource(Lio/reactivex/Flowable;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0061

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 231
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onError()V
    .locals 1

    .line 236
    iget-object v0, p0, Llayout/SearchFragment;->consumer:Llayout/ViewContracts/SearchConsumerContract;

    invoke-interface {v0}, Llayout/ViewContracts/SearchConsumerContract;->hideMapLoadingDialog()V

    .line 237
    invoke-virtual {p0}, Llayout/SearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 208
    iget-object p1, p0, Llayout/SearchFragment;->searchToolbarLayout:Llayout/SearchToolbarLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Llayout/SearchToolbarLayout;->setFocus(Z)V

    .line 209
    invoke-virtual {p0}, Llayout/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHKeyboardHelper;->showKeyboard(Landroid/content/Context;)V

    .line 210
    iget-object p1, p0, Llayout/SearchFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v0, "NavSearch"

    invoke-interface {p1, v0}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 201
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 202
    iget-object v0, p0, Llayout/SearchFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$Presenter;->onViewPaused()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 186
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 187
    iget-object v0, p0, Llayout/SearchFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$Presenter;->onViewResumed()V

    .line 189
    iget-boolean v0, p0, Llayout/SearchFragment;->shouldResetView:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Llayout/SearchFragment;->searchToolbarLayout:Llayout/SearchToolbarLayout;

    const-string v1, ""

    invoke-virtual {v0, v1}, Llayout/SearchToolbarLayout;->setSearchViewText(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Llayout/SearchFragment;->shouldResetView:Z

    .line 194
    :cond_0
    invoke-virtual {p0}, Llayout/SearchFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Llayout/SearchFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v1, "NavSearch"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onSearchResultReady(Lbike/smarthalo/app/models/SHLocation;)V
    .locals 1

    .line 157
    iget-object v0, p0, Llayout/SearchFragment;->consumer:Llayout/ViewContracts/SearchConsumerContract;

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0, p1}, Llayout/ViewContracts/SearchConsumerContract;->onSearchResultSelected(Lbike/smarthalo/app/models/SHLocation;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 224
    iget-object v0, p0, Llayout/SearchFragment;->searchToolbarLayout:Llayout/SearchToolbarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llayout/SearchToolbarLayout;->setFocus(Z)V

    .line 225
    invoke-virtual {p0}, Llayout/SearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHKeyboardHelper;->hideKeyboard(Landroid/app/Activity;)V

    .line 226
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public resetSearchResults()V
    .locals 2

    .line 215
    iget-object v0, p0, Llayout/SearchFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$Presenter;->getCurrentQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llayout/SearchFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$Presenter;->getCurrentQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Llayout/SearchFragment;->searchToolbarLayout:Llayout/SearchToolbarLayout;

    invoke-virtual {v0}, Llayout/SearchToolbarLayout;->clearSearchViewText()V

    .line 217
    iget-object v0, p0, Llayout/SearchFragment;->searchToolbarLayout:Llayout/SearchToolbarLayout;

    const-string v1, ""

    invoke-virtual {v0, v1}, Llayout/SearchToolbarLayout;->setSearchViewText(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Llayout/SearchFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/SearchPresenterContract$Presenter;->resetResultsList()V

    :cond_0
    return-void
.end method

.method public setConsumer(Llayout/ViewContracts/SearchConsumerContract;)V
    .locals 0

    .line 60
    iput-object p1, p0, Llayout/SearchFragment;->consumer:Llayout/ViewContracts/SearchConsumerContract;

    return-void
.end method

.method public setFavouritesController(Lbike/smarthalo/app/coordinators/FavouritesController;)V
    .locals 0

    .line 241
    iput-object p1, p0, Llayout/SearchFragment;->favouritesController:Lbike/smarthalo/app/coordinators/FavouritesController;

    return-void
.end method

.method public updateSearchResults(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHLocation;",
            ">;Z)V"
        }
    .end annotation

    .line 252
    invoke-direct {p0, p2}, Llayout/SearchFragment;->setNoResultsVisibility(Z)V

    .line 254
    iget-object p2, p0, Llayout/SearchFragment;->adapter:Llayout/adapters/SearchResultsAdapter;

    invoke-virtual {p2, p1}, Llayout/adapters/SearchResultsAdapter;->setResults(Ljava/util/List;)V

    return-void
.end method
