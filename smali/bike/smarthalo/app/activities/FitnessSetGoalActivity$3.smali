.class Lbike/smarthalo/app/activities/FitnessSetGoalActivity$3;
.super Ljava/lang/Object;
.source "FitnessSetGoalActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/activities/FitnessSetGoalActivity;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/activities/FitnessSetGoalActivity;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity$3;->this$0:Lbike/smarthalo/app/activities/FitnessSetGoalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 106
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    .line 107
    iget-object p1, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity$3;->this$0:Lbike/smarthalo/app/activities/FitnessSetGoalActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->access$400(Lbike/smarthalo/app/activities/FitnessSetGoalActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    const p2, 0x7f080239

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 108
    iget-object p1, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity$3;->this$0:Lbike/smarthalo/app/activities/FitnessSetGoalActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->access$500(Lbike/smarthalo/app/activities/FitnessSetGoalActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-static {p1}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->setTextWhite(Landroid/widget/TextView;)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity$3;->this$0:Lbike/smarthalo/app/activities/FitnessSetGoalActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->access$400(Lbike/smarthalo/app/activities/FitnessSetGoalActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    const p2, 0x7f080238

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 111
    iget-object p1, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity$3;->this$0:Lbike/smarthalo/app/activities/FitnessSetGoalActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->access$500(Lbike/smarthalo/app/activities/FitnessSetGoalActivity;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x7f060079

    iget-object v0, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity$3;->this$0:Lbike/smarthalo/app/activities/FitnessSetGoalActivity;

    invoke-static {v0}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->access$200(Lbike/smarthalo/app/activities/FitnessSetGoalActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->setTextColor(Landroid/widget/TextView;ILandroid/content/Context;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
