.class public Llayout/FitnessPastRideListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FitnessPastRideListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;,
        Llayout/FitnessPastRideListAdapter$onItemClickFunction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private currentContext:Landroid/content/Context;

.field private isMetric:Z

.field private itemClickListener:Llayout/FitnessPastRideListAdapter$onItemClickFunction;

.field private rideDays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/RideDay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llayout/FitnessPastRideListAdapter$onItemClickFunction;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    iput-object p1, p0, Llayout/FitnessPastRideListAdapter;->itemClickListener:Llayout/FitnessPastRideListAdapter$onItemClickFunction;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 92
    iget-object v0, p0, Llayout/FitnessPastRideListAdapter;->rideDays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 26
    check-cast p1, Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;

    invoke-virtual {p0, p1, p2}, Llayout/FitnessPastRideListAdapter;->onBindViewHolder(Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;I)V
    .locals 6

    .line 55
    iget-object v0, p0, Llayout/FitnessPastRideListAdapter;->rideDays:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/RideDay;

    .line 57
    iget-object v1, p1, Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/RideDay;->getDay()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getLocalizedDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v1, p1, Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;->durationTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/RideDay;->getDuration()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->convertSecondsToTimer(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-boolean v1, p0, Llayout/FitnessPastRideListAdapter;->isMetric:Z

    invoke-virtual {v0}, Lbike/smarthalo/app/models/RideDay;->getDistance()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getDistanceDisplay(ZLjava/lang/Double;)D

    move-result-wide v1

    .line 61
    iget-object v3, p1, Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;->distanceTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Llayout/FitnessPastRideListAdapter;->isMetric:Z

    iget-object v2, p0, Llayout/FitnessPastRideListAdapter;->currentContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getDistanceUnit(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-boolean v1, p0, Llayout/FitnessPastRideListAdapter;->isMetric:Z

    invoke-virtual {v0}, Lbike/smarthalo/app/models/RideDay;->getAverageSpeed()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v1, v2}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getSpeedDisplay(ZLjava/lang/Double;)D

    move-result-wide v1

    .line 64
    iget-object v3, p1, Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;->speedTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Llayout/FitnessPastRideListAdapter;->isMetric:Z

    iget-object v2, p0, Llayout/FitnessPastRideListAdapter;->currentContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getSpeedUnit(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p1, Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;->co2TextView:Landroid/widget/TextView;

    iget-object v2, p0, Llayout/FitnessPastRideListAdapter;->currentContext:Landroid/content/Context;

    const v3, 0x7f110133

    .line 68
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Llayout/FitnessPastRideListAdapter;->currentContext:Landroid/content/Context;

    const v4, 0x7f110134

    .line 69
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-virtual {v0}, Lbike/smarthalo/app/models/RideDay;->getCo2()F

    move-result v4

    float-to-double v4, v4

    .line 67
    invoke-static {v2, v3, v4, v5}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getPrettyUnitString(Ljava/lang/String;Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, p0, Llayout/FitnessPastRideListAdapter;->rideDays:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbike/smarthalo/app/models/RideDay;

    iget-boolean v1, p0, Llayout/FitnessPastRideListAdapter;->isMetric:Z

    iget-object v2, p0, Llayout/FitnessPastRideListAdapter;->itemClickListener:Llayout/FitnessPastRideListAdapter$onItemClickFunction;

    invoke-virtual {p1, p2, v1, v2}, Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;->setOnClickListener(Lbike/smarthalo/app/models/RideDay;ZLlayout/FitnessPastRideListAdapter$onItemClickFunction;)V

    .line 75
    invoke-virtual {v0}, Lbike/smarthalo/app/models/RideDay;->getPastRides()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x1

    if-le p2, v1, :cond_0

    .line 76
    iget-object p2, p1, Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;->numberOfRidesView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lbike/smarthalo/app/models/RideDay;->getPastRides()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Llayout/FitnessPastRideListAdapter;->currentContext:Landroid/content/Context;

    const v3, 0x7f11014f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object p2, p1, Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;->numberOfRidesView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lbike/smarthalo/app/models/RideDay;->getPastRides()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Llayout/FitnessPastRideListAdapter;->currentContext:Landroid/content/Context;

    const v3, 0x7f11015e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :goto_0
    iget-object p1, p1, Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;->caloriesTextView:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lbike/smarthalo/app/models/RideDay;->getCalories()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cal"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Llayout/FitnessPastRideListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;
    .locals 2

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Llayout/FitnessPastRideListAdapter;->currentContext:Landroid/content/Context;

    .line 45
    iget-object p2, p0, Llayout/FitnessPastRideListAdapter;->currentContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0038

    const/4 v1, 0x0

    .line 46
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 48
    new-instance p2, Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;

    invoke-direct {p2, p0, p1}, Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;-><init>(Llayout/FitnessPastRideListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onNewData(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/RideDay;",
            ">;Z)V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Llayout/FitnessPastRideListAdapter;->rideDays:Ljava/util/List;

    .line 86
    iput-boolean p2, p0, Llayout/FitnessPastRideListAdapter;->isMetric:Z

    .line 87
    invoke-virtual {p0}, Llayout/FitnessPastRideListAdapter;->notifyDataSetChanged()V

    return-void
.end method
