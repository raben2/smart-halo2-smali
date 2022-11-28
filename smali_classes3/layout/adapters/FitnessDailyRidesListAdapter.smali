.class public Llayout/adapters/FitnessDailyRidesListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FitnessDailyRidesListAdapter.java"

# interfaces
.implements Lbike/smarthalo/app/models/DailyRidesSelectionContract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;,
        Llayout/adapters/FitnessDailyRidesListAdapter$DailyRideClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;",
        ">;",
        "Lbike/smarthalo/app/models/DailyRidesSelectionContract;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FitnessDailyRidesListAdapter"


# instance fields
.field private context:Landroid/content/Context;

.field private dailyRides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;"
        }
    .end annotation
.end field

.field private dateFormat:Ljava/text/DateFormat;

.field private isInSelectionMode:Z

.field private isMetric:Z

.field private itemClickListener:Llayout/adapters/FitnessDailyRidesListAdapter$DailyRideClickListener;

.field private selectedRides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/Boolean;Llayout/adapters/FitnessDailyRidesListAdapter$DailyRideClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;",
            "Ljava/lang/Boolean;",
            "Llayout/adapters/FitnessDailyRidesListAdapter$DailyRideClickListener;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->selectedRides:Ljava/util/List;

    .line 47
    iput-object p1, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->dailyRides:Ljava/util/List;

    .line 48
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->isMetric:Z

    .line 49
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "h:mm a"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->dateFormat:Ljava/text/DateFormat;

    .line 50
    iput-object p3, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->itemClickListener:Llayout/adapters/FitnessDailyRidesListAdapter$DailyRideClickListener;

    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$0(Llayout/adapters/FitnessDailyRidesListAdapter;Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;Lbike/smarthalo/app/models/SHPastRide;Landroid/view/View;)V
    .locals 0

    .line 115
    iget-boolean p3, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->isInSelectionMode:Z

    if-eqz p3, :cond_0

    .line 116
    iget-object p2, p1, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->selectionButton:Landroid/widget/CheckBox;

    iget-object p1, p1, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->selectionButton:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p1, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->listener:Lbike/smarthalo/app/models/DailyRidesSelectionContract;

    invoke-interface {p1, p2}, Lbike/smarthalo/app/models/DailyRidesSelectionContract;->onRideTapped(Lbike/smarthalo/app/models/SHPastRide;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$onBindViewHolder$1(Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;Lbike/smarthalo/app/models/SHPastRide;Landroid/view/View;)Z
    .locals 0

    .line 121
    iget-object p2, p0, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->listener:Lbike/smarthalo/app/models/DailyRidesSelectionContract;

    invoke-interface {p2, p1, p0}, Lbike/smarthalo/app/models/DailyRidesSelectionContract;->onRideLongPressed(Lbike/smarthalo/app/models/SHPastRide;Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$onBindViewHolder$2(Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;Lbike/smarthalo/app/models/SHPastRide;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 122
    iget-object p0, p0, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->listener:Lbike/smarthalo/app/models/DailyRidesSelectionContract;

    invoke-interface {p0, p1, p3}, Lbike/smarthalo/app/models/DailyRidesSelectionContract;->onRideSelectionChanged(Lbike/smarthalo/app/models/SHPastRide;Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 133
    iget-object v0, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->dailyRides:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 65
    iget-object v0, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->dailyRides:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/SHPastRide;

    .line 66
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$stamp()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedRides()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->selectedRides:Ljava/util/List;

    return-object v0
.end method

.method public isInSelectionMode()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->isInSelectionMode:Z

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 26
    check-cast p1, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;

    invoke-virtual {p0, p1, p2}, Llayout/adapters/FitnessDailyRidesListAdapter;->onBindViewHolder(Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;I)V
    .locals 9

    .line 87
    iget-object v0, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->dailyRides:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbike/smarthalo/app/models/SHPastRide;

    .line 89
    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$stamp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$duration()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 91
    iget-object v2, p1, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->titleTextView:Landroid/widget/TextView;

    iget-object v3, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->context:Landroid/content/Context;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->dateFormat:Ljava/text/DateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$stamp()Ljava/lang/String;

    move-result-object v7

    .line 93
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->dateFormat:Ljava/text/DateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 94
    invoke-virtual {v5, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const v0, 0x7f11014d

    .line 91
    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p1, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->durationTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$duration()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->convertSecondsToTimer(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-boolean v0, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->isMetric:Z

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$distance()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getDistanceDisplay(ZLjava/lang/Double;)D

    move-result-wide v0

    .line 99
    iget-object v2, p1, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->distanceTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->isMetric:Z

    iget-object v1, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getDistanceUnit(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-boolean v0, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->isMetric:Z

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$averageSpeed()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getSpeedDisplay(ZLjava/lang/Double;)D

    move-result-wide v0

    .line 102
    iget-object v2, p1, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->speedTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->isMetric:Z

    iget-object v1, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getSpeedUnit(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p1, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->co2TextView:Landroid/widget/TextView;

    iget-object v1, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->context:Landroid/content/Context;

    const v2, 0x7f110133

    .line 106
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->context:Landroid/content/Context;

    const v3, 0x7f110134

    .line 107
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$co2()F

    move-result v3

    float-to-double v3, v3

    .line 105
    invoke-static {v1, v2, v3, v4}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getPrettyUnitString(Ljava/lang/String;Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p1, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->caloriesTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$calories()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p1, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->rootView:Landroid/view/View;

    new-instance v1, Llayout/adapters/-$$Lambda$FitnessDailyRidesListAdapter$jJxcb2bCAFhfoBtXEMNwP0tIdx4;

    invoke-direct {v1, p0, p1, p2}, Llayout/adapters/-$$Lambda$FitnessDailyRidesListAdapter$jJxcb2bCAFhfoBtXEMNwP0tIdx4;-><init>(Llayout/adapters/FitnessDailyRidesListAdapter;Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;Lbike/smarthalo/app/models/SHPastRide;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p1, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->rootView:Landroid/view/View;

    new-instance v1, Llayout/adapters/-$$Lambda$FitnessDailyRidesListAdapter$aqetG10tZLJTQLEAaHJkSCkzWV8;

    invoke-direct {v1, p1, p2}, Llayout/adapters/-$$Lambda$FitnessDailyRidesListAdapter$aqetG10tZLJTQLEAaHJkSCkzWV8;-><init>(Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;Lbike/smarthalo/app/models/SHPastRide;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 122
    iget-object v0, p1, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->selectionButton:Landroid/widget/CheckBox;

    new-instance v1, Llayout/adapters/-$$Lambda$FitnessDailyRidesListAdapter$fhbd6-4MNFLGgkISowOa7u6ELh8;

    invoke-direct {v1, p1, p2}, Llayout/adapters/-$$Lambda$FitnessDailyRidesListAdapter$fhbd6-4MNFLGgkISowOa7u6ELh8;-><init>(Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;Lbike/smarthalo/app/models/SHPastRide;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 123
    iget-object v0, p1, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->selectionButton:Landroid/widget/CheckBox;

    iget-object v1, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->selectedRides:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 124
    iget-object v0, p1, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->stravaStateView:Landroid/view/View;

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$hasStravaUploadRequest()Z

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHPastRide;->hasStravaIntegration()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v0, p1, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->stravaDescriptionText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$hasStravaUploadRequest()Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, 0x7f11016a

    goto :goto_2

    :cond_2
    const p2, 0x7f110169

    :goto_2
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 127
    iget-object p2, p1, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->selectionContainer:Landroid/view/View;

    iget-boolean v0, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->isInSelectionMode:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    const/16 v0, 0x8

    :goto_3
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object p1, p1, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->itemDetails:Landroid/widget/ImageView;

    iget-boolean p2, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->isInSelectionMode:Z

    if-eqz p2, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2}, Llayout/adapters/FitnessDailyRidesListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 56
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->context:Landroid/content/Context;

    .line 57
    iget-object p2, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d003c

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 59
    new-instance p2, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;

    invoke-direct {p2, p0, p1, p0}, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;-><init>(Llayout/adapters/FitnessDailyRidesListAdapter;Landroid/view/View;Lbike/smarthalo/app/models/DailyRidesSelectionContract;)V

    return-object p2
.end method

.method public onRideLongPressed(Lbike/smarthalo/app/models/SHPastRide;Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;)Z
    .locals 2

    .line 177
    iget-boolean v0, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->isInSelectionMode:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 178
    iput-boolean v1, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->isInSelectionMode:Z

    .line 179
    iget-object v0, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->selectedRides:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object p1, p2, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->selectionButton:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 181
    iget-object p1, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->itemClickListener:Llayout/adapters/FitnessDailyRidesListAdapter$DailyRideClickListener;

    invoke-interface {p1}, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRideClickListener;->onSelectionModeActivated()V

    .line 183
    iget-boolean p1, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->isInSelectionMode:Z

    if-eqz p1, :cond_0

    .line 184
    iget-object p1, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->itemClickListener:Llayout/adapters/FitnessDailyRidesListAdapter$DailyRideClickListener;

    iget-object p2, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->selectedRides:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1, p2}, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRideClickListener;->onSelectionChanged(I)V

    :cond_0
    return v1
.end method

.method public onRideSelectionChanged(Lbike/smarthalo/app/models/SHPastRide;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 197
    iget-object v0, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->selectedRides:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object p2, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->selectedRides:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 200
    iget-object p2, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->selectedRides:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 203
    :cond_1
    :goto_0
    iget-boolean p1, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->isInSelectionMode:Z

    if-eqz p1, :cond_2

    .line 204
    iget-object p1, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->itemClickListener:Llayout/adapters/FitnessDailyRidesListAdapter$DailyRideClickListener;

    iget-object p2, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->selectedRides:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1, p2}, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRideClickListener;->onSelectionChanged(I)V

    :cond_2
    return-void
.end method

.method public onRideTapped(Lbike/smarthalo/app/models/SHPastRide;)V
    .locals 1

    .line 192
    iget-object v0, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->itemClickListener:Llayout/adapters/FitnessDailyRidesListAdapter$DailyRideClickListener;

    invoke-interface {v0, p1}, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRideClickListener;->onRideSelected(Lbike/smarthalo/app/models/SHPastRide;)V

    return-void
.end method

.method public selectAllItems()V
    .locals 2

    .line 209
    iget-object v0, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->selectedRides:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 210
    iget-object v0, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->selectedRides:Ljava/util/List;

    iget-object v1, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->dailyRides:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 211
    iget-object v0, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->dailyRides:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Llayout/adapters/FitnessDailyRidesListAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public setInSelectionMode(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->isInSelectionMode:Z

    if-nez p1, :cond_0

    .line 77
    iget-object p1, p0, Llayout/adapters/FitnessDailyRidesListAdapter;->selectedRides:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method
