.class Lbike/smarthalo/app/activities/FitnessSetGoalActivity$2;
.super Ljava/lang/Object;
.source "FitnessSetGoalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 77
    iput-object p1, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity$2;->this$0:Lbike/smarthalo/app/activities/FitnessSetGoalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 80
    iget-object p1, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity$2;->this$0:Lbike/smarthalo/app/activities/FitnessSetGoalActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->access$000(Lbike/smarthalo/app/activities/FitnessSetGoalActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const v0, 0x7f120003

    if-nez p1, :cond_1

    .line 81
    iget-object p1, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity$2;->this$0:Lbike/smarthalo/app/activities/FitnessSetGoalActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->access$100(Lbike/smarthalo/app/activities/FitnessSetGoalActivity;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double p1, v1, v3

    if-lez p1, :cond_0

    .line 83
    iget-object p1, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity$2;->this$0:Lbike/smarthalo/app/activities/FitnessSetGoalActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->access$200(Lbike/smarthalo/app/activities/FitnessSetGoalActivity;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 84
    iget-object v0, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity$2;->this$0:Lbike/smarthalo/app/activities/FitnessSetGoalActivity;

    invoke-virtual {v0}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 85
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "goal_value"

    .line 86
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v0, "goal_type"

    .line 87
    iget-object v1, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity$2;->this$0:Lbike/smarthalo/app/activities/FitnessSetGoalActivity;

    invoke-static {v1}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->access$300(Lbike/smarthalo/app/activities/FitnessSetGoalActivity;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    iget-object v0, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity$2;->this$0:Lbike/smarthalo/app/activities/FitnessSetGoalActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->setResult(ILandroid/content/Intent;)V

    .line 89
    iget-object p1, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity$2;->this$0:Lbike/smarthalo/app/activities/FitnessSetGoalActivity;

    invoke-virtual {p1}, Lbike/smarthalo/app/activities/FitnessSetGoalActivity;->finish()V

    goto :goto_0

    .line 91
    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity$2;->this$0:Lbike/smarthalo/app/activities/FitnessSetGoalActivity;

    invoke-direct {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f11039d

    .line 92
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_0

    .line 96
    :cond_1
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lbike/smarthalo/app/activities/FitnessSetGoalActivity$2;->this$0:Lbike/smarthalo/app/activities/FitnessSetGoalActivity;

    invoke-direct {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f11039b

    .line 97
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f11039e

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :goto_0
    return-void
.end method
