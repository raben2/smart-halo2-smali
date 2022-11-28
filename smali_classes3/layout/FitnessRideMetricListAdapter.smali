.class public Llayout/FitnessRideMetricListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FitnessRideMetricListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private activeGoal:I

.field private final context:Landroid/app/Activity;

.field private final metricData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final metricIcons:[Ljava/lang/Integer;

.field private final metricTitles:[Ljava/lang/String;

.field private final metricUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0d0037

    .line 36
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Llayout/FitnessRideMetricListAdapter;->activeGoal:I

    .line 37
    iput-object p1, p0, Llayout/FitnessRideMetricListAdapter;->context:Landroid/app/Activity;

    .line 38
    iput-object p2, p0, Llayout/FitnessRideMetricListAdapter;->metricTitles:[Ljava/lang/String;

    .line 39
    iput-object p3, p0, Llayout/FitnessRideMetricListAdapter;->metricIcons:[Ljava/lang/Integer;

    .line 40
    iput-object p4, p0, Llayout/FitnessRideMetricListAdapter;->metricData:Ljava/util/List;

    .line 41
    iput-object p5, p0, Llayout/FitnessRideMetricListAdapter;->metricUnits:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getDefaultMetricsValues(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 78
    invoke-virtual {p0}, Llayout/FitnessRideMetricListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11016f

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v0, 0x0

    .line 81
    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->convertSecondsToTimer(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const v1, 0x7f11013d

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f11012e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "0"

    return-object p1

    :cond_2
    :goto_0
    const-string p1, "0.0"

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 46
    iget-object p2, p0, Llayout/FitnessRideMetricListAdapter;->context:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0d0037

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 47
    invoke-virtual {p2, p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a0382

    .line 49
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v0, 0x7f0a0388

    .line 50
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0380

    .line 51
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a038d

    .line 52
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 54
    iget-object v3, p0, Llayout/FitnessRideMetricListAdapter;->metricTitles:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Llayout/FitnessRideMetricListAdapter;->metricIcons:[Ljava/lang/Integer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    iget-object p3, p0, Llayout/FitnessRideMetricListAdapter;->metricData:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_0

    .line 58
    iget-object p3, p0, Llayout/FitnessRideMetricListAdapter;->metricData:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object p3, p0, Llayout/FitnessRideMetricListAdapter;->metricTitles:[Ljava/lang/String;

    aget-object p3, p3, p1

    invoke-virtual {p0, p3}, Llayout/FitnessRideMetricListAdapter;->getDefaultMetricsValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :goto_0
    iget-object p3, p0, Llayout/FitnessRideMetricListAdapter;->metricUnits:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget p3, p0, Llayout/FitnessRideMetricListAdapter;->activeGoal:I

    if-ne p1, p3, :cond_2

    const p1, 0x7f0a01bc

    .line 65
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const/4 p3, 0x0

    .line 66
    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const p1, 0x7f0a01bd

    .line 67
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 68
    iget p3, p0, Llayout/FitnessRideMetricListAdapter;->activeGoal:I

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const p3, 0x7f1103a2

    .line 69
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    const p3, 0x7f11035c

    .line 71
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_1
    return-object p2
.end method

.method public setActiveGoal(I)V
    .locals 0

    .line 90
    iput p1, p0, Llayout/FitnessRideMetricListAdapter;->activeGoal:I

    return-void
.end method
