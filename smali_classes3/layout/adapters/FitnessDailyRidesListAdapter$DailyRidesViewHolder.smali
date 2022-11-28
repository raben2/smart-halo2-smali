.class public Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FitnessDailyRidesListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llayout/adapters/FitnessDailyRidesListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DailyRidesViewHolder"
.end annotation


# instance fields
.field public caloriesTextView:Landroid/widget/TextView;

.field public co2TextView:Landroid/widget/TextView;

.field public distanceTextView:Landroid/widget/TextView;

.field public durationTextView:Landroid/widget/TextView;

.field public itemDetails:Landroid/widget/ImageView;

.field listener:Lbike/smarthalo/app/models/DailyRidesSelectionContract;

.field public rootView:Landroid/view/View;

.field public selectionButton:Landroid/widget/CheckBox;

.field public selectionContainer:Landroid/view/View;

.field public speedTextView:Landroid/widget/TextView;

.field public stravaDescriptionText:Landroid/widget/TextView;

.field public stravaStateView:Landroid/view/View;

.field final synthetic this$0:Llayout/adapters/FitnessDailyRidesListAdapter;

.field public titleTextView:Landroid/widget/TextView;

.field public translationContainer:Landroid/view/View;


# direct methods
.method constructor <init>(Llayout/adapters/FitnessDailyRidesListAdapter;Landroid/view/View;Lbike/smarthalo/app/models/DailyRidesSelectionContract;)V
    .locals 0

    .line 154
    iput-object p1, p0, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->this$0:Llayout/adapters/FitnessDailyRidesListAdapter;

    .line 155
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 157
    iput-object p3, p0, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->listener:Lbike/smarthalo/app/models/DailyRidesSelectionContract;

    const p1, 0x7f0a0452

    .line 159
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->rootView:Landroid/view/View;

    const p1, 0x7f0a03e6

    .line 160
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->titleTextView:Landroid/widget/TextView;

    const p1, 0x7f0a03e9

    .line 161
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->durationTextView:Landroid/widget/TextView;

    const p1, 0x7f0a03e7

    .line 162
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->distanceTextView:Landroid/widget/TextView;

    const p1, 0x7f0a03e8

    .line 163
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->speedTextView:Landroid/widget/TextView;

    const p1, 0x7f0a03e4

    .line 164
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->caloriesTextView:Landroid/widget/TextView;

    const p1, 0x7f0a03e5

    .line 165
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->co2TextView:Landroid/widget/TextView;

    const p1, 0x7f0a0483

    .line 166
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->selectionContainer:Landroid/view/View;

    const p1, 0x7f0a058e

    .line 167
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->translationContainer:Landroid/view/View;

    const p1, 0x7f0a0481

    .line 168
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->selectionButton:Landroid/widget/CheckBox;

    const p1, 0x7f0a0307

    .line 169
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->itemDetails:Landroid/widget/ImageView;

    const p1, 0x7f0a0509

    .line 170
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->stravaStateView:Landroid/view/View;

    const p1, 0x7f0a04f6

    .line 171
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->stravaDescriptionText:Landroid/widget/TextView;

    return-void
.end method
