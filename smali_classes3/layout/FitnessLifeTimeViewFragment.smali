.class public Llayout/FitnessLifeTimeViewFragment;
.super Landroidx/fragment/app/Fragment;
.source "FitnessLifeTimeViewFragment.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/FitnessLifetimeViewContract$View;


# instance fields
.field private binding:Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;

.field private fitnessLifetimePresenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessLifetimeViewContract$Presenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance()Llayout/FitnessLifeTimeViewFragment;
    .locals 1

    .line 52
    new-instance v0, Llayout/FitnessLifeTimeViewFragment;

    invoke-direct {v0}, Llayout/FitnessLifeTimeViewFragment;-><init>()V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 35
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 p3, 0x0

    .line 36
    invoke-static {p1, p2, p3}, Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;

    move-result-object p1

    iput-object p1, p0, Llayout/FitnessLifeTimeViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;

    .line 38
    iget-object p1, p0, Llayout/FitnessLifeTimeViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;->timeIcon:Landroid/widget/ImageView;

    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->setIconWhite(Landroid/widget/ImageView;)V

    .line 39
    iget-object p1, p0, Llayout/FitnessLifeTimeViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;->distanceIcon:Landroid/widget/ImageView;

    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->setIconWhite(Landroid/widget/ImageView;)V

    .line 40
    iget-object p1, p0, Llayout/FitnessLifeTimeViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;->speedIcon:Landroid/widget/ImageView;

    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->setIconWhite(Landroid/widget/ImageView;)V

    .line 41
    iget-object p1, p0, Llayout/FitnessLifeTimeViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;->elevationIcon:Landroid/widget/ImageView;

    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->setIconWhite(Landroid/widget/ImageView;)V

    .line 42
    iget-object p1, p0, Llayout/FitnessLifeTimeViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;->caloriesIcon:Landroid/widget/ImageView;

    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->setIconWhite(Landroid/widget/ImageView;)V

    .line 43
    iget-object p1, p0, Llayout/FitnessLifeTimeViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;->co2Icon:Landroid/widget/ImageView;

    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->setIconWhite(Landroid/widget/ImageView;)V

    .line 45
    invoke-virtual {p0}, Llayout/FitnessLifeTimeViewFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lbike/smarthalo/app/presenters/FitnessLifetimeViewPresenter;->buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/FitnessLifetimeViewContract$View;)Lbike/smarthalo/app/presenters/presenterContracts/FitnessLifetimeViewContract$Presenter;

    move-result-object p1

    iput-object p1, p0, Llayout/FitnessLifeTimeViewFragment;->fitnessLifetimePresenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessLifetimeViewContract$Presenter;

    .line 47
    iget-object p1, p0, Llayout/FitnessLifeTimeViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;

    invoke-virtual {p1}, Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 66
    iget-object v0, p0, Llayout/FitnessLifeTimeViewFragment;->fitnessLifetimePresenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessLifetimeViewContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessLifetimeViewContract$Presenter;->onDispose()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 59
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 60
    iget-object v0, p0, Llayout/FitnessLifeTimeViewFragment;->fitnessLifetimePresenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessLifetimeViewContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessLifetimeViewContract$Presenter;->onViewResumed()V

    return-void
.end method

.method public updateLifetimeView(Lbike/smarthalo/app/models/LifetimeMetrics;Z)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Llayout/FitnessLifeTimeViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;->totalTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/LifetimeMetrics;->getTotalMilliseconds()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-double v1, v1

    invoke-static {v1, v2}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->convertSecondsToTimer(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Llayout/FitnessLifeTimeViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;->totalTrips:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lbike/smarthalo/app/models/LifetimeMetrics;->getAdjustedTotalTrips()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Llayout/FitnessLifeTimeViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110170

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Llayout/FitnessLifeTimeViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;->avgTripTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/LifetimeMetrics;->getAvgTime()F

    move-result v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->convertSecondsToTimer(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Llayout/FitnessLifeTimeViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;->longestTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/LifetimeMetrics;->getLongestTrip()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    int-to-double v1, v1

    invoke-static {v1, v2}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->convertSecondsToTimer(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p0}, Llayout/FitnessLifeTimeViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getDistanceUnit(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Llayout/FitnessLifeTimeViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;->totalDistance:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lbike/smarthalo/app/models/LifetimeMetrics;->getTotalDistance()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {p2, v3}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getDistanceDisplay(ZLjava/lang/Double;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v1, p0, Llayout/FitnessLifeTimeViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;->avgTripDistance:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lbike/smarthalo/app/models/LifetimeMetrics;->getAvgDistance()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {p2, v3}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getDistanceDisplay(ZLjava/lang/Double;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v1, p0, Llayout/FitnessLifeTimeViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;->longestDistance:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lbike/smarthalo/app/models/LifetimeMetrics;->getLongestDistance()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {p2, v3}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getDistanceDisplay(ZLjava/lang/Double;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Llayout/FitnessLifeTimeViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;->avgSpeed:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lbike/smarthalo/app/models/LifetimeMetrics;->getAvgSpeed()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p2, v2}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getSpeedDisplay(ZLjava/lang/Double;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Llayout/FitnessLifeTimeViewFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p2, v2}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getSpeedUnit(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {p0}, Llayout/FitnessLifeTimeViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getElevationUnit(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v1, p0, Llayout/FitnessLifeTimeViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;->totalClimb:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lbike/smarthalo/app/models/LifetimeMetrics;->getTotalClimb()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {p2, v3}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getElevationDisplay(ZLjava/lang/Double;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p0, Llayout/FitnessLifeTimeViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;->avgClimb:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lbike/smarthalo/app/models/LifetimeMetrics;->getAvgClimb()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {p2, v3}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getElevationDisplay(ZLjava/lang/Double;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Llayout/FitnessLifeTimeViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;->highestClimb:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lbike/smarthalo/app/models/LifetimeMetrics;->getHighestClimb()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {p2, v3}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getElevationDisplay(ZLjava/lang/Double;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p2, p0, Llayout/FitnessLifeTimeViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;

    iget-object p2, p2, Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;->totalCalories:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lbike/smarthalo/app/models/LifetimeMetrics;->getTotalCalories()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Llayout/FitnessLifeTimeViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110130

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object p2, p0, Llayout/FitnessLifeTimeViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;

    iget-object p2, p2, Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;->avgCalories:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lbike/smarthalo/app/models/LifetimeMetrics;->getAvgCalories()F

    move-result v1

    const/high16 v3, 0x41200000    # 10.0f

    mul-float v1, v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Llayout/FitnessLifeTimeViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object p2, p0, Llayout/FitnessLifeTimeViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;

    iget-object p2, p2, Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;->highestCalories:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lbike/smarthalo/app/models/LifetimeMetrics;->getHighestCalories()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Llayout/FitnessLifeTimeViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object p2, p0, Llayout/FitnessLifeTimeViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;

    iget-object p2, p2, Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;->totalCo2:Landroid/widget/TextView;

    .line 96
    invoke-virtual {p0}, Llayout/FitnessLifeTimeViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110132

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Llayout/FitnessLifeTimeViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110134

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {p1}, Lbike/smarthalo/app/models/LifetimeMetrics;->getTotalCo2()F

    move-result v4

    float-to-double v4, v4

    .line 95
    invoke-static {v0, v2, v4, v5}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getPrettyUnitString(Ljava/lang/String;Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object p2, p0, Llayout/FitnessLifeTimeViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;

    iget-object p2, p2, Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;->avgCo2:Landroid/widget/TextView;

    .line 102
    invoke-virtual {p0}, Llayout/FitnessLifeTimeViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Llayout/FitnessLifeTimeViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {p1}, Lbike/smarthalo/app/models/LifetimeMetrics;->getAvgCo2()F

    move-result v4

    float-to-double v4, v4

    .line 101
    invoke-static {v0, v2, v4, v5}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getPrettyUnitString(Ljava/lang/String;Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object p2, p0, Llayout/FitnessLifeTimeViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;

    iget-object p2, p2, Lbike/smarthalo/app/databinding/FragmentFitnessLifetimeViewBinding;->highestCo2:Landroid/widget/TextView;

    .line 109
    invoke-virtual {p0}, Llayout/FitnessLifeTimeViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Llayout/FitnessLifeTimeViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {p1}, Lbike/smarthalo/app/models/LifetimeMetrics;->getHighestCo2()I

    move-result p1

    int-to-double v2, p1

    .line 108
    invoke-static {v0, v1, v2, v3}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getPrettyUnitString(Ljava/lang/String;Ljava/lang/String;D)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    .line 117
    iget-object v0, p0, Llayout/FitnessLifeTimeViewFragment;->fitnessLifetimePresenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessLifetimeViewContract$Presenter;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessLifetimeViewContract$Presenter;->processLifetimeMetrics(Ljava/util/List;)V

    return-void
.end method
