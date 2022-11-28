.class Lbike/smarthalo/app/activities/FitnessSetGoalActivity$1;
.super Ljava/lang/Object;
.source "FitnessSetGoalActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 62
    iput-object p1, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity$1;->this$0:Lbike/smarthalo/app/activities/FitnessSetGoalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 66
    iget-object p1, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity$1;->this$0:Lbike/smarthalo/app/activities/FitnessSetGoalActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->access$000(Lbike/smarthalo/app/activities/FitnessSetGoalActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity$1;->this$0:Lbike/smarthalo/app/activities/FitnessSetGoalActivity;

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 69
    iget-object p2, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity$1;->this$0:Lbike/smarthalo/app/activities/FitnessSetGoalActivity;

    invoke-static {p2}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->access$000(Lbike/smarthalo/app/activities/FitnessSetGoalActivity;)Landroid/widget/EditText;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
