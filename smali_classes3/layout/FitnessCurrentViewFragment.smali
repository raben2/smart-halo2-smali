.class public Llayout/FitnessCurrentViewFragment;
.super Landroidx/fragment/app/Fragment;
.source "FitnessCurrentViewFragment.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$View;


# static fields
.field public static final GOAL_TYPE:Ljava/lang/String; = "goal_type"

.field public static final GOAL_VALUE:Ljava/lang/String; = "goal_value"

.field public static final SET_GOAL_RESULT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FitnessCurrentViewFragment"


# instance fields
.field private goalLayout:Landroid/widget/LinearLayout;

.field private goalList:Landroid/widget/ListView;

.field private goalStatusLayout:Llayout/GoalStatusLayout;

.field private listAdapter:Llayout/FitnessRideMetricListAdapter;

.field private listAdapterSetGoal:Llayout/FitnessTrackingGoalListAdapter;

.field private metricDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private metricList:Landroid/widget/ListView;

.field private metricUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private presenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$Presenter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private displayActiveGoal(Landroid/content/Context;Lbike/smarthalo/app/models/SHGoal;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 353
    iget-object v0, p0, Llayout/FitnessCurrentViewFragment;->metricList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 354
    invoke-direct {p0, p2}, Llayout/FitnessCurrentViewFragment;->displayGoalOnList(Lbike/smarthalo/app/models/SHGoal;)V

    .line 355
    iget-object v0, p0, Llayout/FitnessCurrentViewFragment;->goalStatusLayout:Llayout/GoalStatusLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Llayout/GoalStatusLayout;->setupGoalStatus(ILandroid/content/Context;)V

    .line 356
    iget-object v0, p0, Llayout/FitnessCurrentViewFragment;->goalStatusLayout:Llayout/GoalStatusLayout;

    iget-object v1, p0, Llayout/FitnessCurrentViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$Presenter;

    invoke-interface {v1}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$Presenter;->isUsingMetric()Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Llayout/GoalStatusLayout;->updateProgress(Landroid/content/Context;Lbike/smarthalo/app/models/SHGoal;Z)V

    :cond_0
    return-void
.end method

.method private displayGoalOnList(Lbike/smarthalo/app/models/SHGoal;)V
    .locals 3

    .line 314
    iget-object v0, p0, Llayout/FitnessCurrentViewFragment;->listAdapter:Llayout/FitnessRideMetricListAdapter;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v1

    invoke-virtual {v0, v1}, Llayout/FitnessRideMetricListAdapter;->setActiveGoal(I)V

    .line 315
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 316
    iget-object v0, p0, Llayout/FitnessCurrentViewFragment;->metricList:Landroid/widget/ListView;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f0a01bc

    .line 318
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 319
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result p1

    const/4 v1, 0x2

    const v2, 0x7f0a01bd

    if-eq p1, v1, :cond_0

    .line 320
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f1103a2

    .line 321
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 323
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f11035c

    .line 324
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onCreateView$0(Llayout/FitnessCurrentViewFragment;Landroid/view/View;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Llayout/FitnessCurrentViewFragment;->onGoalButtonClicked()V

    return-void
.end method

.method public static synthetic lambda$onGoalButtonClicked$2(Llayout/FitnessCurrentViewFragment;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 292
    invoke-direct {p0, v0, p1}, Llayout/FitnessCurrentViewFragment;->onGoalDeleted(ZLandroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$setGoalListClickListeners$1(Llayout/FitnessCurrentViewFragment;ILandroid/view/View;)V
    .locals 2

    .line 149
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Llayout/FitnessCurrentViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    sget-object v0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->GOAL_TYPE:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0}, Llayout/FitnessCurrentViewFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 154
    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 155
    invoke-direct {p0}, Llayout/FitnessCurrentViewFragment;->setupSelectGoalValueView()V

    :cond_0
    return-void
.end method

.method private onGoalButtonClicked()V
    .locals 5

    .line 272
    invoke-virtual {p0}, Llayout/FitnessCurrentViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 277
    :cond_0
    iget-object v1, p0, Llayout/FitnessCurrentViewFragment;->goalStatusLayout:Llayout/GoalStatusLayout;

    invoke-virtual {v1}, Llayout/GoalStatusLayout;->getGoalSettingSate()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 278
    iget-object v1, p0, Llayout/FitnessCurrentViewFragment;->metricList:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 279
    iget-object v1, p0, Llayout/FitnessCurrentViewFragment;->goalList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 280
    iget-object v1, p0, Llayout/FitnessCurrentViewFragment;->goalStatusLayout:Llayout/GoalStatusLayout;

    invoke-virtual {v1, v3, v0}, Llayout/GoalStatusLayout;->setupGoalStatus(ILandroid/content/Context;)V

    goto :goto_0

    .line 281
    :cond_1
    iget-object v1, p0, Llayout/FitnessCurrentViewFragment;->goalStatusLayout:Llayout/GoalStatusLayout;

    invoke-virtual {v1}, Llayout/GoalStatusLayout;->getGoalSettingSate()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 282
    iget-object v1, p0, Llayout/FitnessCurrentViewFragment;->metricList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 283
    iget-object v1, p0, Llayout/FitnessCurrentViewFragment;->goalList:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 284
    iget-object v1, p0, Llayout/FitnessCurrentViewFragment;->goalStatusLayout:Llayout/GoalStatusLayout;

    invoke-virtual {v1, v4, v0}, Llayout/GoalStatusLayout;->setupGoalStatus(ILandroid/content/Context;)V

    goto :goto_0

    .line 286
    :cond_2
    iget-object v1, p0, Llayout/FitnessCurrentViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$Presenter;

    invoke-interface {v1}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$Presenter;->hasOngoingGoal()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f110395

    const v2, 0x7f110397

    const v3, 0x7f110396

    .line 287
    new-instance v4, Llayout/-$$Lambda$FitnessCurrentViewFragment$9T0QUvum6cZbT300kHiXZMmEFrk;

    invoke-direct {v4, p0, v0}, Llayout/-$$Lambda$FitnessCurrentViewFragment$9T0QUvum6cZbT300kHiXZMmEFrk;-><init>(Llayout/FitnessCurrentViewFragment;Landroid/content/Context;)V

    invoke-static {v0, v1, v2, v3, v4}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showConfirmationDialog(Landroid/content/Context;IIILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)V

    goto :goto_0

    .line 294
    :cond_3
    invoke-direct {p0, v4, v0}, Llayout/FitnessCurrentViewFragment;->onGoalDeleted(ZLandroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private onGoalDeleted(ZLandroid/content/Context;)V
    .locals 2

    .line 300
    iget-object p1, p0, Llayout/FitnessCurrentViewFragment;->goalList:Landroid/widget/ListView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 301
    iget-object p1, p0, Llayout/FitnessCurrentViewFragment;->metricList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 302
    iget-object p1, p0, Llayout/FitnessCurrentViewFragment;->goalStatusLayout:Llayout/GoalStatusLayout;

    invoke-virtual {p1, v1, p2}, Llayout/GoalStatusLayout;->setupGoalStatus(ILandroid/content/Context;)V

    .line 304
    iget-object p1, p0, Llayout/FitnessCurrentViewFragment;->metricList:Landroid/widget/ListView;

    iget-object p2, p0, Llayout/FitnessCurrentViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$Presenter;

    invoke-interface {p2}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$Presenter;->getCurrentGoalType()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const p2, 0x7f0a01bc

    .line 306
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object p1, p0, Llayout/FitnessCurrentViewFragment;->listAdapter:Llayout/FitnessRideMetricListAdapter;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Llayout/FitnessRideMetricListAdapter;->setActiveGoal(I)V

    .line 310
    :cond_0
    iget-object p1, p0, Llayout/FitnessCurrentViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$Presenter;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$Presenter;->deleteGoal()V

    return-void
.end method

.method private setGoalListClickListeners(Ljava/util/List;)[Landroid/view/View$OnClickListener;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Landroid/view/View$OnClickListener;"
        }
    .end annotation

    .line 145
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    .line 146
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 147
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 148
    new-instance v3, Llayout/-$$Lambda$FitnessCurrentViewFragment$BjGzxCF7OMiewnD62pCsmXCw02E;

    invoke-direct {v3, p0, v2}, Llayout/-$$Lambda$FitnessCurrentViewFragment$BjGzxCF7OMiewnD62pCsmXCw02E;-><init>(Llayout/FitnessCurrentViewFragment;I)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private setUpMetricUnits(Z)V
    .locals 3

    .line 237
    invoke-virtual {p0}, Llayout/FitnessCurrentViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    iget-object v1, p0, Llayout/FitnessCurrentViewFragment;->metricUnits:Ljava/util/List;

    if-nez v1, :cond_1

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Llayout/FitnessCurrentViewFragment;->metricUnits:Ljava/util/List;

    goto :goto_0

    .line 245
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 248
    :goto_0
    iget-object v1, p0, Llayout/FitnessCurrentViewFragment;->metricUnits:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_2

    .line 251
    iget-object p1, p0, Llayout/FitnessCurrentViewFragment;->metricUnits:Ljava/util/List;

    const v1, 0x7f1103aa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object p1, p0, Llayout/FitnessCurrentViewFragment;->metricUnits:Ljava/util/List;

    const v1, 0x7f1103b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object p1, p0, Llayout/FitnessCurrentViewFragment;->metricUnits:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 255
    :cond_2
    iget-object p1, p0, Llayout/FitnessCurrentViewFragment;->metricUnits:Ljava/util/List;

    const v1, 0x7f1103ab

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object p1, p0, Llayout/FitnessCurrentViewFragment;->metricUnits:Ljava/util/List;

    const v1, 0x7f1103b3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object p1, p0, Llayout/FitnessCurrentViewFragment;->metricUnits:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    :goto_1
    iget-object p1, p0, Llayout/FitnessCurrentViewFragment;->metricUnits:Ljava/util/List;

    const v1, 0x7f1103a8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setupSelectGoalValueView()V
    .locals 2

    .line 267
    iget-object v0, p0, Llayout/FitnessCurrentViewFragment;->goalList:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Llayout/FitnessCurrentViewFragment;->metricList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public newInstance()Llayout/FitnessCurrentViewFragment;
    .locals 1

    .line 63
    new-instance v0, Llayout/FitnessCurrentViewFragment;

    invoke-direct {v0}, Llayout/FitnessCurrentViewFragment;-><init>()V

    return-object v0
.end method

.method public onActiveRideUpdated(Lbike/smarthalo/app/models/SHRide;Z)V
    .locals 9

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 195
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    .line 196
    invoke-static {v3, v4}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->convertSecondsToTimer(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->realmGet$isActive()Z

    move-result v2

    const-wide v5, 0x408f400000000000L    # 1000.0

    if-eqz v2, :cond_1

    .line 198
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v0, v7

    long-to-double v0, v0

    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/StrictMath;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->convertSecondsToTimer(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_1
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->realmGet$endTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v0, v7

    long-to-double v0, v0

    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/StrictMath;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->convertSecondsToTimer(D)Ljava/lang/String;

    move-result-object v0

    .line 204
    :goto_0
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->realmGet$traveledDistance()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p2, v1}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getDistanceDisplay(ZLjava/lang/Double;)D

    move-result-wide v1

    .line 205
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->realmGet$avgSpeed()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p2, v2}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getSpeedDisplay(ZLjava/lang/Double;)D

    move-result-wide v2

    .line 209
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->realmGet$burntCalories()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v4, v3

    .line 213
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 216
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->realmGet$co2()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int p1, v4

    .line 217
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 220
    iget-object v4, p0, Llayout/FitnessCurrentViewFragment;->metricDatas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 221
    iget-object v4, p0, Llayout/FitnessCurrentViewFragment;->metricDatas:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v0, p0, Llayout/FitnessCurrentViewFragment;->metricDatas:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v0, p0, Llayout/FitnessCurrentViewFragment;->metricDatas:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v0, p0, Llayout/FitnessCurrentViewFragment;->metricDatas:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v0, p0, Llayout/FitnessCurrentViewFragment;->metricDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-direct {p0, p2}, Llayout/FitnessCurrentViewFragment;->setUpMetricUnits(Z)V

    .line 228
    iget-object p1, p0, Llayout/FitnessCurrentViewFragment;->listAdapter:Llayout/FitnessRideMetricListAdapter;

    invoke-virtual {p1}, Llayout/FitnessRideMetricListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 332
    invoke-virtual {p0}, Llayout/FitnessCurrentViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const-string p1, "goal_value"

    .line 338
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "goal_type"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "goal_value"

    const-wide/16 v3, 0x0

    .line 339
    invoke-virtual {p3, p1, v3, v4}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide p1

    const-string v1, "goal_type"

    .line 340
    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p3

    .line 342
    iget-object v1, p0, Llayout/FitnessCurrentViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$Presenter;

    invoke-interface {v1, p3, p1, p2}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$Presenter;->addGoal(ID)Lbike/smarthalo/app/models/SHGoal;

    move-result-object p1

    .line 344
    invoke-direct {p0, v0, p1}, Llayout/FitnessCurrentViewFragment;->displayActiveGoal(Landroid/content/Context;Lbike/smarthalo/app/models/SHGoal;)V

    goto :goto_0

    .line 347
    :cond_1
    iget-object p1, p0, Llayout/FitnessCurrentViewFragment;->goalStatusLayout:Llayout/GoalStatusLayout;

    invoke-virtual {p1, v2, v0}, Llayout/GoalStatusLayout;->setupGoalStatus(ILandroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    .line 71
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 p3, 0x0

    const v0, 0x7f0d005c

    .line 72
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 74
    invoke-virtual {p0}, Llayout/FitnessCurrentViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 75
    invoke-static {p2, p0}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$View;)Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$Presenter;

    move-result-object v0

    iput-object v0, p0, Llayout/FitnessCurrentViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$Presenter;

    const v0, 0x7f0a04e5

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Llayout/FitnessCurrentViewFragment;->metricList:Landroid/widget/ListView;

    const v0, 0x7f0a01c3

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Llayout/FitnessCurrentViewFragment;->goalList:Landroid/widget/ListView;

    const/4 v0, 0x5

    .line 80
    new-array v3, v0, [Ljava/lang/String;

    const v1, 0x7f11016f

    .line 81
    invoke-virtual {p0, v1}, Llayout/FitnessCurrentViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, p3

    const v2, 0x7f11013d

    .line 82
    invoke-virtual {p0, v2}, Llayout/FitnessCurrentViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const v4, 0x7f11012e

    .line 83
    invoke-virtual {p0, v4}, Llayout/FitnessCurrentViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const v4, 0x7f11012f

    .line 85
    invoke-virtual {p0, v4}, Llayout/FitnessCurrentViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v3, v8

    const v7, 0x7f110131

    .line 86
    invoke-virtual {p0, v7}, Llayout/FitnessCurrentViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    aput-object v9, v3, v10

    .line 89
    new-array v0, v0, [Ljava/lang/Integer;

    const v9, 0x7f0800f7

    .line 90
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, p3

    const v9, 0x7f0800ec

    .line 91
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v5

    const v9, 0x7f0800f6

    .line 92
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v6

    const v9, 0x7f0800ea

    .line 93
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v8

    const v9, 0x7f0800eb

    .line 94
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v10

    .line 97
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Llayout/FitnessCurrentViewFragment;->metricDatas:Ljava/util/List;

    .line 99
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-virtual {p0, v1}, Llayout/FitnessCurrentViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {p0, v2}, Llayout/FitnessCurrentViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {p0, v4}, Llayout/FitnessCurrentViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {p0, v7}, Llayout/FitnessCurrentViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f08023c

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f080233

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f080231

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f080232

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v11, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v11, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v11, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v11, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object p3, p0, Llayout/FitnessCurrentViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$Presenter;

    invoke-interface {p3}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$Presenter;->isSpeedGoalSupported()Z

    move-result p3

    if-eqz p3, :cond_0

    const p3, 0x7f110165

    .line 118
    invoke-virtual {p0, p3}, Llayout/FitnessCurrentViewFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v9, v6, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const p3, 0x7f08023b

    .line 119
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v7, v6, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 120
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {v11, v6, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 123
    :cond_0
    iget-object p3, p0, Llayout/FitnessCurrentViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$Presenter;

    invoke-interface {p3}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$Presenter;->isUsingMetric()Z

    move-result p3

    invoke-direct {p0, p3}, Llayout/FitnessCurrentViewFragment;->setUpMetricUnits(Z)V

    .line 125
    new-instance p3, Llayout/FitnessRideMetricListAdapter;

    invoke-virtual {p0}, Llayout/FitnessCurrentViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v5, p0, Llayout/FitnessCurrentViewFragment;->metricDatas:Ljava/util/List;

    iget-object v6, p0, Llayout/FitnessCurrentViewFragment;->metricUnits:Ljava/util/List;

    move-object v1, p3

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Llayout/FitnessRideMetricListAdapter;-><init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)V

    iput-object p3, p0, Llayout/FitnessCurrentViewFragment;->listAdapter:Llayout/FitnessRideMetricListAdapter;

    .line 126
    iget-object p3, p0, Llayout/FitnessCurrentViewFragment;->metricList:Landroid/widget/ListView;

    iget-object v0, p0, Llayout/FitnessCurrentViewFragment;->listAdapter:Llayout/FitnessRideMetricListAdapter;

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    invoke-direct {p0, v11}, Llayout/FitnessCurrentViewFragment;->setGoalListClickListeners(Ljava/util/List;)[Landroid/view/View$OnClickListener;

    move-result-object p3

    .line 129
    new-instance v0, Llayout/FitnessTrackingGoalListAdapter;

    invoke-virtual {p0}, Llayout/FitnessCurrentViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v9, v7, p3}, Llayout/FitnessTrackingGoalListAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;[Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Llayout/FitnessCurrentViewFragment;->listAdapterSetGoal:Llayout/FitnessTrackingGoalListAdapter;

    .line 131
    iget-object p3, p0, Llayout/FitnessCurrentViewFragment;->goalList:Landroid/widget/ListView;

    iget-object v0, p0, Llayout/FitnessCurrentViewFragment;->listAdapterSetGoal:Llayout/FitnessTrackingGoalListAdapter;

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    iget-object p3, p0, Llayout/FitnessCurrentViewFragment;->goalList:Landroid/widget/ListView;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setVisibility(I)V

    const p3, 0x7f0a01c0

    .line 134
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Llayout/FitnessCurrentViewFragment;->goalLayout:Landroid/widget/LinearLayout;

    .line 136
    new-instance p3, Llayout/-$$Lambda$FitnessCurrentViewFragment$SOqeGZvTytjOD2UD5dbcMyawSCw;

    invoke-direct {p3, p0}, Llayout/-$$Lambda$FitnessCurrentViewFragment$SOqeGZvTytjOD2UD5dbcMyawSCw;-><init>(Llayout/FitnessCurrentViewFragment;)V

    .line 138
    new-instance v0, Llayout/GoalStatusLayout;

    iget-object v1, p0, Llayout/FitnessCurrentViewFragment;->goalLayout:Landroid/widget/LinearLayout;

    invoke-direct {v0, p2, v1, p3}, Llayout/GoalStatusLayout;-><init>(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Llayout/FitnessCurrentViewFragment;->goalStatusLayout:Llayout/GoalStatusLayout;

    return-object p1
.end method

.method public onGoalUpdated(Lbike/smarthalo/app/models/SHGoal;Z)V
    .locals 2

    .line 233
    iget-object v0, p0, Llayout/FitnessCurrentViewFragment;->goalStatusLayout:Llayout/GoalStatusLayout;

    invoke-virtual {p0}, Llayout/FitnessCurrentViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Llayout/GoalStatusLayout;->updateProgress(Landroid/content/Context;Lbike/smarthalo/app/models/SHGoal;Z)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 186
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 187
    iget-object v0, p0, Llayout/FitnessCurrentViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$Presenter;->onViewPaused()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 165
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 166
    iget-object v0, p0, Llayout/FitnessCurrentViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$Presenter;->onViewResumed()V

    return-void
.end method

.method public updateCurrentRideWithLastRide(Lbike/smarthalo/app/models/SHPastRide;)V
    .locals 1

    .line 171
    iget-object v0, p0, Llayout/FitnessCurrentViewFragment;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$Presenter;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$Presenter;->updateCurrentRide(Lbike/smarthalo/app/models/SHPastRide;)V

    return-void
.end method

.method public updateGoalAndRide(Lbike/smarthalo/app/models/SHRide;Lbike/smarthalo/app/models/SHGoal;Z)V
    .locals 0

    .line 176
    invoke-direct {p0, p3}, Llayout/FitnessCurrentViewFragment;->setUpMetricUnits(Z)V

    .line 177
    invoke-virtual {p0, p1, p3}, Llayout/FitnessCurrentViewFragment;->onActiveRideUpdated(Lbike/smarthalo/app/models/SHRide;Z)V

    if-eqz p2, :cond_0

    .line 180
    invoke-virtual {p0}, Llayout/FitnessCurrentViewFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Llayout/FitnessCurrentViewFragment;->displayActiveGoal(Landroid/content/Context;Lbike/smarthalo/app/models/SHGoal;)V

    :cond_0
    return-void
.end method
