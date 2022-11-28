.class public Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FitnessPastRideListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/FitnessPastRideListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PastRidesViewHolder"
.end annotation


# instance fields
.field caloriesTextView:Landroid/widget/TextView;

.field co2TextView:Landroid/widget/TextView;

.field distanceTextView:Landroid/widget/TextView;

.field durationTextView:Landroid/widget/TextView;

.field numberOfRidesLayout:Landroid/widget/RelativeLayout;

.field numberOfRidesView:Landroid/widget/TextView;

.field pastViewChevronImageView:Landroid/widget/ImageView;

.field speedTextView:Landroid/widget/TextView;

.field final synthetic this$0:Llayout/FitnessPastRideListAdapter;

.field titleTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Llayout/FitnessPastRideListAdapter;Landroid/view/View;)V
    .locals 0

    .line 106
    iput-object p1, p0, Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;->this$0:Llayout/FitnessPastRideListAdapter;

    .line 107
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a03e6

    .line 109
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;->titleTextView:Landroid/widget/TextView;

    const p1, 0x7f0a03e9

    .line 110
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;->durationTextView:Landroid/widget/TextView;

    const p1, 0x7f0a03e7

    .line 111
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;->distanceTextView:Landroid/widget/TextView;

    const p1, 0x7f0a03e8

    .line 112
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;->speedTextView:Landroid/widget/TextView;

    const p1, 0x7f0a03e4

    .line 113
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;->caloriesTextView:Landroid/widget/TextView;

    const p1, 0x7f0a03e5

    .line 114
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;->co2TextView:Landroid/widget/TextView;

    const p1, 0x7f0a03c1

    .line 115
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;->numberOfRidesView:Landroid/widget/TextView;

    const p1, 0x7f0a03eb

    .line 116
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;->pastViewChevronImageView:Landroid/widget/ImageView;

    const p1, 0x7f0a03c3

    .line 117
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;->numberOfRidesLayout:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic lambda$setOnClickListener$0(Llayout/FitnessPastRideListAdapter$onItemClickFunction;Lbike/smarthalo/app/models/RideDay;ZLandroid/view/View;)V
    .locals 0

    .line 121
    invoke-interface {p0, p1, p2}, Llayout/FitnessPastRideListAdapter$onItemClickFunction;->onPastRideSelected(Lbike/smarthalo/app/models/RideDay;Z)V

    return-void
.end method


# virtual methods
.method public setOnClickListener(Lbike/smarthalo/app/models/RideDay;ZLlayout/FitnessPastRideListAdapter$onItemClickFunction;)V
    .locals 2

    .line 121
    iget-object v0, p0, Llayout/FitnessPastRideListAdapter$PastRidesViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Llayout/-$$Lambda$FitnessPastRideListAdapter$PastRidesViewHolder$mA3HYRyrxC50tXt5K59LbMJXBiQ;

    invoke-direct {v1, p3, p1, p2}, Llayout/-$$Lambda$FitnessPastRideListAdapter$PastRidesViewHolder$mA3HYRyrxC50tXt5K59LbMJXBiQ;-><init>(Llayout/FitnessPastRideListAdapter$onItemClickFunction;Lbike/smarthalo/app/models/RideDay;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
