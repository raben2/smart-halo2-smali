.class public Llayout/FitnessPastViewFragment;
.super Landroidx/fragment/app/Fragment;
.source "FitnessPastViewFragment.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/FitnessPastViewContract$View;
.implements Llayout/FitnessPastRideListAdapter$onItemClickFunction;


# static fields
.field private static TAG:Ljava/lang/String; = "FitnessPastViewFragment"


# instance fields
.field listAdapter:Llayout/FitnessPastRideListAdapter;

.field noPastRides:Landroid/widget/LinearLayout;

.field pastRidesList:Landroidx/recyclerview/widget/RecyclerView;

.field private presenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessPastViewContract$Presenter;

.field progressRing:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private preparePastRides()V
    .locals 3

    .line 77
    iget-object v0, p0, Llayout/FitnessPastViewFragment;->noPastRides:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Llayout/FitnessPastViewFragment;->progressRing:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Llayout/FitnessPastViewFragment;->pastRidesList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public newInstance()Llayout/FitnessPastViewFragment;
    .locals 1

    .line 67
    new-instance v0, Llayout/FitnessPastViewFragment;

    invoke-direct {v0}, Llayout/FitnessPastViewFragment;-><init>()V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 45
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0d005e

    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 48
    invoke-virtual {p0}, Llayout/FitnessPastViewFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p0}, Lbike/smarthalo/app/presenters/FitnessPastViewPresenter;->buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/FitnessPastViewContract$View;)Lbike/smarthalo/app/presenters/presenterContracts/FitnessPastViewContract$Presenter;

    move-result-object p2

    iput-object p2, p0, Llayout/FitnessPastViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessPastViewContract$Presenter;

    const p2, 0x7f0a03ea

    .line 50
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Llayout/FitnessPastViewFragment;->pastRidesList:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    iget-object p2, p0, Llayout/FitnessPastViewFragment;->pastRidesList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Llayout/FitnessPastViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 52
    iget-object p2, p0, Llayout/FitnessPastViewFragment;->pastRidesList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p3}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 54
    new-instance p2, Llayout/FitnessPastRideListAdapter;

    invoke-direct {p2, p0}, Llayout/FitnessPastRideListAdapter;-><init>(Llayout/FitnessPastRideListAdapter$onItemClickFunction;)V

    iput-object p2, p0, Llayout/FitnessPastViewFragment;->listAdapter:Llayout/FitnessPastRideListAdapter;

    .line 55
    iget-object p2, p0, Llayout/FitnessPastViewFragment;->pastRidesList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Llayout/FitnessPastViewFragment;->listAdapter:Llayout/FitnessPastRideListAdapter;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const p2, 0x7f0a03b3

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Llayout/FitnessPastViewFragment;->noPastRides:Landroid/widget/LinearLayout;

    const p2, 0x7f0a03ec

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Llayout/FitnessPastViewFragment;->progressRing:Landroid/widget/ProgressBar;

    .line 60
    invoke-direct {p0}, Llayout/FitnessPastViewFragment;->preparePastRides()V

    return-object p1
.end method

.method public onPastRideSelected(Lbike/smarthalo/app/models/RideDay;Z)V
    .locals 1

    .line 112
    iget-object v0, p0, Llayout/FitnessPastViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessPastViewContract$Presenter;

    invoke-interface {v0, p1, p2}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessPastViewContract$Presenter;->showDailyRides(Lbike/smarthalo/app/models/RideDay;Z)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 106
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 107
    iget-object v0, p0, Llayout/FitnessPastViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessPastViewContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessPastViewContract$Presenter;->onViewPaused()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 101
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public preparePastRidesVisuals(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/RideDay;",
            ">;Z)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Llayout/FitnessPastViewFragment;->progressRing:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 85
    invoke-virtual {p0}, Llayout/FitnessPastViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 88
    iget-object p1, p0, Llayout/FitnessPastViewFragment;->pastRidesList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 89
    iget-object p1, p0, Llayout/FitnessPastViewFragment;->noPastRides:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Llayout/FitnessPastViewFragment;->noPastRides:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Llayout/FitnessPastViewFragment;->pastRidesList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Llayout/FitnessPastViewFragment;->listAdapter:Llayout/FitnessPastRideListAdapter;

    invoke-virtual {v0, p1, p2}, Llayout/FitnessPastRideListAdapter;->onNewData(Ljava/util/List;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateOnNewPastRides(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Llayout/FitnessPastViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessPastViewContract$Presenter;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessPastViewContract$Presenter;->prepareRideDays(Ljava/util/List;)V

    return-void
.end method
