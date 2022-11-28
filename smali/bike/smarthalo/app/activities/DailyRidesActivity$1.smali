.class Lbike/smarthalo/app/activities/DailyRidesActivity$1;
.super Ljava/lang/Object;
.source "DailyRidesActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/activities/DailyRidesActivity;->toggleSelectionMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/activities/DailyRidesActivity;

.field final synthetic val$isActivated:Z

.field final synthetic val$viewHolder:Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/activities/DailyRidesActivity;ZLlayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity$1;->this$0:Lbike/smarthalo/app/activities/DailyRidesActivity;

    iput-boolean p2, p0, Lbike/smarthalo/app/activities/DailyRidesActivity$1;->val$isActivated:Z

    iput-object p3, p0, Lbike/smarthalo/app/activities/DailyRidesActivity$1;->val$viewHolder:Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 348
    iget-boolean p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity$1;->val$isActivated:Z

    if-nez p1, :cond_0

    .line 349
    iget-object p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity$1;->val$viewHolder:Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;

    iget-object p1, p1, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->selectionContainer:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 350
    iget-object p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity$1;->val$viewHolder:Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;

    iget-object p1, p1, Llayout/adapters/FitnessDailyRidesListAdapter$DailyRidesViewHolder;->itemDetails:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/activities/DailyRidesActivity$1;->this$0:Lbike/smarthalo/app/activities/DailyRidesActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/DailyRidesActivity;->access$000(Lbike/smarthalo/app/activities/DailyRidesActivity;)Llayout/adapters/FitnessDailyRidesListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Llayout/adapters/FitnessDailyRidesListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
